import 'dart:developer';
import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:the_postraves_package/client/response_sealed.dart';
import 'package:the_postraves_package/constants/server_constants.dart';
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
  final ServerConstantsAbstract _serverConstantsAbstract;

  FirebaseImageRepositoryImpl(
    this._firebaseStorage,
    this._serverConstantsAbstract,
  );

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
      // using cors anywhere as intermediate for requests not from server
      // Uri.parse('${_serverConstantsAbstract.corsAnywhereHost}/$imageUrl'),
      Uri.parse(imageUrl),
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
