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
    apiKey: 'AIzaSyDv_Ej9geKulJ4ByRvIgnt3-BnFeFKnS_E',
    appId: '1:1013548112695:web:9e3131cbd744e9bc2358b2',
    messagingSenderId: '1013548112695',
    projectId: 'projeto-tai3',
    authDomain: 'projeto-tai3.firebaseapp.com',
    storageBucket: 'projeto-tai3.appspot.com',
    measurementId: 'G-EEXW7SCCQQ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAwUkBwqQXyk1grRyQQB1eKzp1r5WC4PvE',
    appId: '1:1013548112695:android:1072fc65263f94e52358b2',
    messagingSenderId: '1013548112695',
    projectId: 'projeto-tai3',
    storageBucket: 'projeto-tai3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBs45Xfu7opuW9RtcGeOqL3BMyIV_j0KmI',
    appId: '1:1013548112695:ios:e19c03ed5ae639462358b2',
    messagingSenderId: '1013548112695',
    projectId: 'projeto-tai3',
    storageBucket: 'projeto-tai3.appspot.com',
    iosClientId: '1013548112695-trpphe64n31r2ao7g80eicreefljj21a.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterStartup',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBs45Xfu7opuW9RtcGeOqL3BMyIV_j0KmI',
    appId: '1:1013548112695:ios:e19c03ed5ae639462358b2',
    messagingSenderId: '1013548112695',
    projectId: 'projeto-tai3',
    storageBucket: 'projeto-tai3.appspot.com',
    iosClientId: '1013548112695-trpphe64n31r2ao7g80eicreefljj21a.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterStartup',
  );
}
