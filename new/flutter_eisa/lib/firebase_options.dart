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
    apiKey: 'AIzaSyDy5lPWxB8p93SE2Klqt4zusjsO6jhhT1E',
    appId: '1:123434917921:web:b2f8887433ea0608280360',
    messagingSenderId: '123434917921',
    projectId: 'ps-eis-firebase',
    authDomain: 'ps-eis-firebase.firebaseapp.com',
    storageBucket: 'ps-eis-firebase.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDwS-UAhDRuCF01xrZY9UxkaF8KRMAau2A',
    appId: '1:123434917921:android:c235c715eab63bb3280360',
    messagingSenderId: '123434917921',
    projectId: 'ps-eis-firebase',
    storageBucket: 'ps-eis-firebase.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDYYwZcm118stlb3-XeMCln-YvMhcPHiX4',
    appId: '1:123434917921:ios:b1784ec339e1b3fb280360',
    messagingSenderId: '123434917921',
    projectId: 'ps-eis-firebase',
    storageBucket: 'ps-eis-firebase.appspot.com',
    iosClientId: '123434917921-0eor9i2qpsj6v5m1ltqs3kpbja3ug5k8.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterEisa',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDYYwZcm118stlb3-XeMCln-YvMhcPHiX4',
    appId: '1:123434917921:ios:b1784ec339e1b3fb280360',
    messagingSenderId: '123434917921',
    projectId: 'ps-eis-firebase',
    storageBucket: 'ps-eis-firebase.appspot.com',
    iosClientId: '123434917921-0eor9i2qpsj6v5m1ltqs3kpbja3ug5k8.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterEisa',
  );
}
