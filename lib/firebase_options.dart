// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyC2804TvM-1XXyzXNIh8Fvr9fF6qqIIry4',
    appId: '1:432636742129:web:f2987abad5ac333948dc50',
    messagingSenderId: '432636742129',
    projectId: 'chat-app-g8',
    authDomain: 'chat-app-g8.firebaseapp.com',
    storageBucket: 'chat-app-g8.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBnuWhd5jZedSFEmiHKf1NKxlV4B9nweuU',
    appId: '1:432636742129:android:cfe184d794c287aa48dc50',
    messagingSenderId: '432636742129',
    projectId: 'chat-app-g8',
    storageBucket: 'chat-app-g8.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCo3awwhJu6vKCqmLAwveCo43RuhRTfYWg',
    appId: '1:432636742129:ios:5bb95460042b9f3048dc50',
    messagingSenderId: '432636742129',
    projectId: 'chat-app-g8',
    storageBucket: 'chat-app-g8.appspot.com',
    androidClientId: '432636742129-24q8p5fp39qqdd07ji0sr9o1phe93gsb.apps.googleusercontent.com',
    iosBundleId: 'dev.elyor',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCo3awwhJu6vKCqmLAwveCo43RuhRTfYWg',
    appId: '1:432636742129:ios:597744aafae4381548dc50',
    messagingSenderId: '432636742129',
    projectId: 'chat-app-g8',
    storageBucket: 'chat-app-g8.appspot.com',
    androidClientId: '432636742129-24q8p5fp39qqdd07ji0sr9o1phe93gsb.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatAppG8.RunnerTests',
  );
}