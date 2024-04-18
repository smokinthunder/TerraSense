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
    apiKey: 'AIzaSyAjiZrnPnoTEV2My1ritk3uguKewwNe7n8',
    appId: '1:1035664170299:web:8db000195e5075f292eb1e',
    messagingSenderId: '1035664170299',
    projectId: 'remote-ai',
    authDomain: 'remote-ai.firebaseapp.com',
    storageBucket: 'remote-ai.appspot.com',
    measurementId: 'G-ZCZRFSS7WK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAxXxTeLFp0caoC1gy4IjPU7H7l4370tuE',
    appId: '1:1035664170299:android:ea4adbbcde14ba2e92eb1e',
    messagingSenderId: '1035664170299',
    projectId: 'remote-ai',
    storageBucket: 'remote-ai.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA0MiK6D7Iqk2dcotuFuu2A31lUj9cJeMA',
    appId: '1:1035664170299:ios:7e9fdd083e1d747292eb1e',
    messagingSenderId: '1035664170299',
    projectId: 'remote-ai',
    storageBucket: 'remote-ai.appspot.com',
    iosBundleId: 'com.example.remoteai',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA0MiK6D7Iqk2dcotuFuu2A31lUj9cJeMA',
    appId: '1:1035664170299:ios:5c4e074ff2d5108992eb1e',
    messagingSenderId: '1035664170299',
    projectId: 'remote-ai',
    storageBucket: 'remote-ai.appspot.com',
    iosBundleId: 'com.example.remoteai.RunnerTests',
  );
}
