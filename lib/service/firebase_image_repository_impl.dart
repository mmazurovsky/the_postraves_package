import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/widgets.dart';
import 'package:the_postraves_package/client/response_sealed.dart';
import 'package:the_postraves_package/errors/failures.dart';
import 'package:http/http.dart' as http_client;

abstract class FirebaseImageRepository {
  Future<ResponseSealed<String>> uploadUserImageFile(File imageFile);
  Future<ResponseSealed<String>> uploadImageFromInternet({
    required String imageUrl,
    required String folderName,
  });
}

class FirebaseImageRepositoryImpl implements FirebaseImageRepository {
  final FirebaseStorage _firebaseStorage;

  FirebaseImageRepositoryImpl(this._firebaseStorage);

  @override
  Future<ResponseSealed<String>> uploadUserImageFile(File imageFile) async {
    final refr =
        _firebaseStorage.ref('images/user/user-${DateTime.now().toUtc()}.png');
    try {
      String? imageLink;
      final uploadTask = refr.putFile(imageFile);
      await uploadTask
          .whenComplete(() async => imageLink = await refr.getDownloadURL());
      return ResponseSealed.success(imageLink!);
    } on FirebaseException catch (e) {
      return ResponseSealed.failure(
        Failure(FailureType.firebaseFailure, e.message),
      );
    }
  }

  @override
  Future<ResponseSealed<String>> uploadImageFromInternet({
    required String imageUrl,
    required String folderName,
  }) async {
    final response = await http_client.get(
      Uri.parse('https://cors-panda-fze4k.ondigitalocean.app/$imageUrl'),
    );
    if (!response.statusCode.toString().startsWith('2')) {
      final message =
          'Getting image through proxy failed, status code: ${response.statusCode}, body: ${response.body}';
      log(message);
      return ResponseSealed.failure(
        Failure(
          FailureType.serverFailure,
          message,
        ),
      );
    }
    final downloadedImageData = response.bodyBytes;
    final refr = _firebaseStorage
        .ref('images/$folderName/image-${DateTime.now().toUtc()}.png');
    try {
      String? imageLink;
      final uploadTask = refr.putData(
        downloadedImageData,
        SettableMetadata(contentType: 'image/png'),
      );
      await uploadTask
          .whenComplete(() async => imageLink = await refr.getDownloadURL());
      return ResponseSealed.success(imageLink!);
    } on FirebaseException catch (e) {
      return ResponseSealed.failure(
        Failure(FailureType.firebaseFailure, e.message),
      );
    }
  }
}
