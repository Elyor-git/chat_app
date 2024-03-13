import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';

import '../../../common/util/custom_exceptions.dart';
import '../../../common/util/logger.dart';

abstract interface class IFirebaseStorageDataProvider {
  Future<String> storeImage(String fileName, Uint8List imageByteData);

  Future<String> storeVideo(String fileName, Uint8List videoByteData);
}

class FirebaseStorageDataProviderImpl extends IFirebaseStorageDataProvider {
  FirebaseStorageDataProviderImpl() : _firebaseStorageRef = FirebaseStorage.instance.ref();

  final Reference _firebaseStorageRef;

  @override
  Future<String> storeImage(String fileName, Uint8List imageByteData) async {
    try {
      final ref = _firebaseStorageRef.child('images').child(fileName);
      await ref.putData(imageByteData);
      return await ref.getDownloadURL();
    } catch (error, stackTrace) {
      fatal(error, stackTrace);
      throw const FirebaseStorageException();
    }
  }

  @override
  Future<String> storeVideo(String fileName, Uint8List videoByteData) async {
    try {
      final ref = _firebaseStorageRef.child('videos').child(fileName);
      await ref.putData(videoByteData);
      return await ref.getDownloadURL();
    } catch (error, stackTrace) {
      fatal(error, stackTrace);
      throw const FirebaseStorageException();
    }
  }
}
