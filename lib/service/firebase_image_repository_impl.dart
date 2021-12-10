import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:the_postraves_package/client/response_sealed.dart';
import 'package:the_postraves_package/constants/server_constants.dart';
import 'package:the_postraves_package/errors/failures.dart';

abstract class FirebaseImageRepository {
  Future<ResponseSealed<String>> uploadUserImageFile(File imageFile);
}

class FirebaseImageRepositoryImpl implements FirebaseImageRepository {
  final FirebaseStorage _firebaseStorage;
  final ServerConstantsAbstract _serverConstantsAbstract;

  FirebaseImageRepositoryImpl(
    this._firebaseStorage,
    this._serverConstantsAbstract,
  );

  String get possibleTestBucketPrefix =>
      _serverConstantsAbstract.environment == ServerEnvironment.prod
          ? ''
          : 'test/';

  @override
  Future<ResponseSealed<String>> uploadUserImageFile(File imageFile) async {
    final refr = _firebaseStorage.ref(
        '${possibleTestBucketPrefix}images/user/user-${DateTime.now().toUtc()}.png');
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
}
