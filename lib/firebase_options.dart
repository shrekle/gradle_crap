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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAN8kt7Fwo-xyb4L4a06wOViqWezIokKJs',
    appId: '1:299128854073:web:29b9b8bbbbb75a1848dfe8',
    messagingSenderId: '299128854073',
    projectId: 'gradle-crap',
    authDomain: 'gradle-crap.firebaseapp.com',
    storageBucket: 'gradle-crap.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAoocLt09FOHvyjaDIblhkIrDQns8fnrn0',
    appId: '1:299128854073:android:bd7341fec151b7f648dfe8',
    messagingSenderId: '299128854073',
    projectId: 'gradle-crap',
    storageBucket: 'gradle-crap.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDYox8F5aojQrCInaRhregB978D9SLdj6s',
    appId: '1:299128854073:ios:751b98cc96e0a3d748dfe8',
    messagingSenderId: '299128854073',
    projectId: 'gradle-crap',
    storageBucket: 'gradle-crap.appspot.com',
    iosClientId: '299128854073-j5v3rcktgr60b30bpn1idihcb51o601d.apps.googleusercontent.com',
    iosBundleId: 'com.example.gradleCrap',
  );
}