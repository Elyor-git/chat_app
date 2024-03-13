import 'dart:typed_data';

import '../model/user_model.dart';
import 'firebase_auth_data_provider.dart';
import 'firebase_storage_data_provider.dart';

abstract interface class IAuthorationRepository {
  Future<String> signInWithPhoneNumber(String phoneNumber);

  Future<void> otpSignIn({required String id, required String smsCode});

  Future<UserModel?> getUser();

  Future<void> updateUser({
    required String displayName,
    required String avatarImageUrl,
  });

  Future<String> uploadImage({
    required String fileName,
    required Uint8List imageByteData,
  });

  Future<String> uploadVideo({
    required String fileName,
    required Uint8List videoByteData,
  });
}

class AuthorationRepositoryImpl implements IAuthorationRepository {
  const AuthorationRepositoryImpl({
    required this.firebaseAuthDataProvider,
    required this.firebaseStorageDataProvider,
  });

  final IFirebaseAuthDataProvider firebaseAuthDataProvider;
  final IFirebaseStorageDataProvider firebaseStorageDataProvider;

  @override
  Future<void> otpSignIn({required String id, required String smsCode}) =>
      firebaseAuthDataProvider.otpSignIn(id: id, smsCode: smsCode);

  @override
  Future<String> signInWithPhoneNumber(String phoneNumber) =>
      firebaseAuthDataProvider.signInWithPhoneNumber(phoneNumber);

  @override
  Future<UserModel?> getUser() => firebaseAuthDataProvider.getUser();

  @override
  Future<void> updateUser({
    required String displayName,
    required String avatarImageUrl,
  }) =>
      firebaseAuthDataProvider.updateUser(
        displayName: displayName,
        avatarImageUrl: avatarImageUrl,
      );

  @override
  Future<String> uploadImage({
    required String fileName,
    required Uint8List imageByteData,
  }) =>
      firebaseStorageDataProvider.storeImage(
        fileName,
        imageByteData,
      );

  @override
  Future<String> uploadVideo({
    required String fileName,
    required Uint8List videoByteData,
  }) =>
      firebaseStorageDataProvider.storeVideo(
        fileName,
        videoByteData,
      );
}
