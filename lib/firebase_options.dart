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
    apiKey: 'AIzaSyAwfo5S-q0EEHrXhKeZ-ADAZxBz6JYCmuo',
    appId: '1:1039940721230:web:f98013db99b344f4db011f',
    messagingSenderId: '1039940721230',
    projectId: 'foodapp-c0118',
    authDomain: 'foodapp-c0118.firebaseapp.com',
    storageBucket: 'foodapp-c0118.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA3cbRtt3rSUshcMXYnDomquqmAsQTkMRg',
    appId: '1:1039940721230:android:8a334e6ed0f7d2b2db011f',
    messagingSenderId: '1039940721230',
    projectId: 'foodapp-c0118',
    storageBucket: 'foodapp-c0118.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC-qV7mFDOhJh3XoE4DChZ8q4QFk-Z27E8',
    appId: '1:1039940721230:ios:8738f393e2567b30db011f',
    messagingSenderId: '1039940721230',
    projectId: 'foodapp-c0118',
    storageBucket: 'foodapp-c0118.appspot.com',
    iosBundleId: 'com.example.newRestuarentApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC-qV7mFDOhJh3XoE4DChZ8q4QFk-Z27E8',
    appId: '1:1039940721230:ios:cd31b4e2d13a8d61db011f',
    messagingSenderId: '1039940721230',
    projectId: 'foodapp-c0118',
    storageBucket: 'foodapp-c0118.appspot.com',
    iosBundleId: 'com.example.newRestuarentApp.RunnerTests',
  );
}
