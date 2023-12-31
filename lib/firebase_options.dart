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
    apiKey: 'AIzaSyCKjsT3C-FhjOxwbol5KQlLoxHpT1eeKB8',
    appId: '1:505365962437:web:e55269d0fe037c844a9aac',
    messagingSenderId: '505365962437',
    projectId: 'zoomclone-42c93',
    authDomain: 'zoomclone-42c93.firebaseapp.com',
    storageBucket: 'zoomclone-42c93.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCw_LA1ji3P4asmfUO_PSxgLu8A5xNLPi0',
    appId: '1:505365962437:android:c1263b308236e93f4a9aac',
    messagingSenderId: '505365962437',
    projectId: 'zoomclone-42c93',
    storageBucket: 'zoomclone-42c93.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBP7fkpxk0LEgpXeVCY3ih2pY2gryuF32Y',
    appId: '1:505365962437:ios:d47076c424e3809d4a9aac',
    messagingSenderId: '505365962437',
    projectId: 'zoomclone-42c93',
    storageBucket: 'zoomclone-42c93.appspot.com',
    iosClientId: '505365962437-62ua0pkho8v2vf7gqhvte2ltceu26is6.apps.googleusercontent.com',
    iosBundleId: 'com.example.zoomClone',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBP7fkpxk0LEgpXeVCY3ih2pY2gryuF32Y',
    appId: '1:505365962437:ios:35c7dc82c5c565e14a9aac',
    messagingSenderId: '505365962437',
    projectId: 'zoomclone-42c93',
    storageBucket: 'zoomclone-42c93.appspot.com',
    iosClientId: '505365962437-8us3bi2a052t99tgntigka1r504iqp3p.apps.googleusercontent.com',
    iosBundleId: 'com.example.zoomClone.RunnerTests',
  );
}
