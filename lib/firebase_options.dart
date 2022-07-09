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
    apiKey: 'AIzaSyDKNttQf3K4uk7jRNDvpgD-p5sFwR5Lcts',
    appId: '1:23529951553:web:8360ce8b7a690d281a11c0',
    messagingSenderId: '23529951553',
    projectId: 'flutter-aula-cbb63',
    authDomain: 'flutter-aula-cbb63.firebaseapp.com',
    storageBucket: 'flutter-aula-cbb63.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDmd17CquHHsu1ucqinsefUVjC-mgBYa_A',
    appId: '1:23529951553:android:cbf4fc197e26b23f1a11c0',
    messagingSenderId: '23529951553',
    projectId: 'flutter-aula-cbb63',
    storageBucket: 'flutter-aula-cbb63.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBqGPMnWYtJNBGIKc6TSUU6EtIo_wCxztA',
    appId: '1:23529951553:ios:5c82605b897a09e11a11c0',
    messagingSenderId: '23529951553',
    projectId: 'flutter-aula-cbb63',
    storageBucket: 'flutter-aula-cbb63.appspot.com',
    androidClientId: '23529951553-48hb5eiiatrnb9p55dt6257e998a12c4.apps.googleusercontent.com',
    iosClientId: '23529951553-bs486t5g5fur24rt0vo8j9e61fm0nq63.apps.googleusercontent.com',
    iosBundleId: 'com.example.myFinancesApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBqGPMnWYtJNBGIKc6TSUU6EtIo_wCxztA',
    appId: '1:23529951553:ios:5c82605b897a09e11a11c0',
    messagingSenderId: '23529951553',
    projectId: 'flutter-aula-cbb63',
    storageBucket: 'flutter-aula-cbb63.appspot.com',
    androidClientId: '23529951553-48hb5eiiatrnb9p55dt6257e998a12c4.apps.googleusercontent.com',
    iosClientId: '23529951553-bs486t5g5fur24rt0vo8j9e61fm0nq63.apps.googleusercontent.com',
    iosBundleId: 'com.example.myFinancesApp',
  );
}
