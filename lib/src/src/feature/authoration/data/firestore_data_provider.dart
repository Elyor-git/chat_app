import 'package:cloud_firestore/cloud_firestore.dart';

import '../model/user_model.dart';

abstract interface class IFirestoreDataProvider {
  Future<void> storeUserData(UserModel user);

  Future<List<UserModel>> getUsers();
}

class FirestoreDataProviderImpl extends IFirestoreDataProvider {
  FirestoreDataProviderImpl() : _firestore = FirebaseFirestore.instance;

  final FirebaseFirestore _firestore;

  @override
  Future<List<UserModel>> getUsers() async {
    List<UserModel> users = [];
    
    final response = await _firestore.collection('users').get();

    users.addAll(response.docs.map((e) => UserModel.fromJson(e.data())));

    return users;
  }

  @override
  Future<void> storeUserData(UserModel user) async {
    final userCollection = _firestore.collection('users');

    userCollection.doc(user.id);
    await userCollection.add(user.toJson());
  }
}
