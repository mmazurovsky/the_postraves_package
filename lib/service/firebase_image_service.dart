import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:the_postraves_package/client/response_sealed.dart';
import 'package:the_postraves_package/constants/server_constants.dart';
import 'package:the_postraves_package/errors/failures.dart';
import 'package:the_postraves_package/service/image_resizing_service.dart';
import 'package:http/http.dart' as http_client;

abstract class FirebaseImageService {
  Future<ResponseSealed<String>> resizeAndUploadImageFileNonWeb(
      {required String folderName, required File imageFile});
  Future<ResponseSealed<String>> resizeAndUploadImageByLink({
    required String folderName,
    required String imageUrl,
    bool isCorsAnywhereRequired = false,
  });
  Future<ResponseSealed<String>> resizeAndUploadImageBytes(
      {required String folderName, required Uint8List imageBytes});
}

class FirebaseImageServiceImpl implements FirebaseImageService {
  final FirebaseStorage _firebaseStorage;
  final ServerConstantsAbstract _serverConstantsAbstract;

  FirebaseImageServiceImpl(
    this._firebaseStorage,
    this._serverConstantsAbstract,
  );

  Future<ResponseSealed<String>> _uploadImageBytesToFirebase(
      {required String folderName, required Uint8List imageBytes}) async {
    String _possibleTestBucketPrefix =
        _serverConstantsAbstract.environment == ServerEnvironment.prod
            ? ''
            : 'test/';

    final refr = _firebaseStorage.ref(
        '${_possibleTestBucketPrefix}images/$folderName/image-${DateTime.now().toUtc()}.jpg');
    try {
      String? imageLink;
      final uploadTask = refr.putData(
        imageBytes,
        SettableMetadata(contentType: 'image/jpg'),
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

  @override
  Future<ResponseSealed<String>> resizeAndUploadImageFileNonWeb(
      {required String folderName, required File imageFile}) async {
    final resizedImageAsBytes = ImageResizingService.resizeImageFile(imageFile);

    return _uploadImageBytesToFirebase(
        folderName: folderName, imageBytes: resizedImageAsBytes);
  }

  @override
  Future<ResponseSealed<String>> resizeAndUploadImageBytes(
      {required String folderName, required Uint8List imageBytes}) async {
    final resizedImageAsBytes =
        ImageResizingService.resizeImageBytes(imageBytes);

    return _uploadImageBytesToFirebase(
        folderName: folderName, imageBytes: resizedImageAsBytes);
  }

  @override
  Future<ResponseSealed<String>> resizeAndUploadImageByLink({
    required String folderName,
    required String imageUrl,
    bool isCorsAnywhereRequired = false,
  }) async {
    final response = await http_client.get(
      // using cors anywhere as intermediary for requests not from server
      isCorsAnywhereRequired
          ? Uri.parse('$corsAnywhereHost/$imageUrl')
          : Uri.parse(imageUrl),
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
    final downloadedImageBytes = response.bodyBytes;

    return resizeAndUploadImageBytes(
        folderName: folderName, imageBytes: downloadedImageBytes);
  }
}
