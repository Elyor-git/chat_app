import 'package:firebase_app_check/firebase_app_check.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


import '../../../../firebase_options.dart';
import '../../feature/authoration/data/authoration_repository.dart';
import '../../feature/authoration/data/database_data_provider.dart';
import '../../feature/authoration/data/firebase_auth_data_provider.dart';
import '../../feature/authoration/data/firebase_storage_data_provider.dart';
import '../../feature/authoration/data/firestore_data_provider.dart';
import '../../feature/dependencies/model/dependencies.dart';
import '../../feature/main/data/main_repository.dart';
import 'app.dart';

final class AppRunner {
  Future<void> initializeAndRun() async {
    WidgetsFlutterBinding.ensureInitialized();

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    await FirebaseAppCheck.instance.activate(
      androidProvider: AndroidProvider.playIntegrity,
      // appleProvider: AppleProvider.appAttest,
    );

    final sharedPreferences = await SharedPreferences.getInstance();
    final dependencies = MutableDependencies(
      sharedPreferences: sharedPreferences,
      authorationRepository: AuthorationRepositoryImpl(
        firebaseAuthDataProvider: FirebaseAuthDataProviderImpl(),
        firebaseStorageDataProvider: FirebaseStorageDataProviderImpl(),
        firestoreDataProvider: FirestoreDataProviderImpl(),
        databaseDataProvider: DatabaseDataProviderImpl(
          sharedPreferences: sharedPreferences,
        ),
      ),
      mainRepository: const MainRepositoryImpl(),
    );

    App(dependencies: dependencies).run();
  }
}
