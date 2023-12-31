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
    apiKey: 'AIzaSyA7QPHbpEDPW1yyI0zMQHwJzoKLx-lpbYY',
    appId: '1:426520847482:web:457218a7ee737ce91d47c3',
    messagingSenderId: '426520847482',
    projectId: 'qrcode-7298a',
    authDomain: 'qrcode-7298a.firebaseapp.com',
    storageBucket: 'qrcode-7298a.appspot.com',
    measurementId: 'G-9K9ZPKD3K9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAGp66LVWx6qzgBygpQsjwr_KOQgzapuSg',
    appId: '1:426520847482:android:aeed7ef37184a5a61d47c3',
    messagingSenderId: '426520847482',
    projectId: 'qrcode-7298a',
    storageBucket: 'qrcode-7298a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCZPRo6XNC3wsrOeKp94FbgG4RiQg43YJs',
    appId: '1:426520847482:ios:0a50d6946d74603c1d47c3',
    messagingSenderId: '426520847482',
    projectId: 'qrcode-7298a',
    storageBucket: 'qrcode-7298a.appspot.com',
    iosClientId: '426520847482-j2ht0p8spc67jbhfjplfoo2uq0af1ca9.apps.googleusercontent.com',
    iosBundleId: 'com.example.qrcode',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCZPRo6XNC3wsrOeKp94FbgG4RiQg43YJs',
    appId: '1:426520847482:ios:0a50d6946d74603c1d47c3',
    messagingSenderId: '426520847482',
    projectId: 'qrcode-7298a',
    storageBucket: 'qrcode-7298a.appspot.com',
    iosClientId: '426520847482-j2ht0p8spc67jbhfjplfoo2uq0af1ca9.apps.googleusercontent.com',
    iosBundleId: 'com.example.qrcode',
  );
}
