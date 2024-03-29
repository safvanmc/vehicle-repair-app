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
    apiKey: 'AIzaSyCjUOP3xEYkSegv9b0aekITJDugGQd_7a8',
    appId: '1:861507235377:web:85a603ee7abf211c5d2f10',
    messagingSenderId: '861507235377',
    projectId: 'vehicle-42f66',
    authDomain: 'vehicle-42f66.firebaseapp.com',
    storageBucket: 'vehicle-42f66.appspot.com',
    measurementId: 'G-K4ZX4D83N7',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAG56M5KabBHerisRFsQx8xHyqEj30uyaU',
    appId: '1:861507235377:android:dcc77130ef65d2425d2f10',
    messagingSenderId: '861507235377',
    projectId: 'vehicle-42f66',
    storageBucket: 'vehicle-42f66.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB7yjMHFnRWPAIvdg1H27RmSswk-4tSIcQ',
    appId: '1:861507235377:ios:f4319d8dfe1a4b295d2f10',
    messagingSenderId: '861507235377',
    projectId: 'vehicle-42f66',
    storageBucket: 'vehicle-42f66.appspot.com',
    iosBundleId: 'com.example.vehicleRepair',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB7yjMHFnRWPAIvdg1H27RmSswk-4tSIcQ',
    appId: '1:861507235377:ios:2da3cbbe236af33c5d2f10',
    messagingSenderId: '861507235377',
    projectId: 'vehicle-42f66',
    storageBucket: 'vehicle-42f66.appspot.com',
    iosBundleId: 'com.example.vehicleRepair.RunnerTests',
  );
}
