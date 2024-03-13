import 'dart:typed_data';

import '../model/user_model.dart';
import 'database_data_provider.dart';
import 'firebase_auth_data_provider.dart';
import 'firebase_storage_data_provider.dart';
import 'firestore_data_provider.dart';

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

  Future<List<UserModel>> getUsers();
}

class AuthorationRepositoryImpl implements IAuthorationRepository {
  const AuthorationRepositoryImpl({
    required this.firebaseAuthDataProvider,
    required this.firebaseStorageDataProvider,
    required this.firestoreDataProvider,
    required this.databaseDataProvider,
  });

  final IFirebaseAuthDataProvider firebaseAuthDataProvider;
  final IFirebaseStorageDataProvider firebaseStorageDataProvider;
  final IFirestoreDataProvider firestoreDataProvider;
  final IDatabaseDataProvider databaseDataProvider;

  @override
  Future<void> otpSignIn({required String id, required String smsCode}) =>
      firebaseAuthDataProvider.otpSignIn(id: id, smsCode: smsCode);

  @override
  Future<String> signInWithPhoneNumber(String phoneNumber) =>
      firebaseAuthDataProvider.signInWithPhoneNumber(phoneNumber);

  @override
  Future<UserModel?> getUser() async {
    final user = await databaseDataProvider.getUser();

    if (user == null) {
      return await firebaseAuthDataProvider.getUser();
    } else {
      return user;
    }
  }

  @override
  Future<void> updateUser({
    required String displayName,
    required String avatarImageUrl,
  }) async {
    await firebaseAuthDataProvider.updateUser(
      displayName: displayName,
      avatarImageUrl: avatarImageUrl,
    );

    final user = await firebaseAuthDataProvider.getUser();

    if (user != null) {
      await firestoreDataProvider.storeUserData(user);
      await databaseDataProvider.saveUser(user);
    }
  }

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

  @override
  Future<List<UserModel>> getUsers() => firestoreDataProvider.getUsers();
}
