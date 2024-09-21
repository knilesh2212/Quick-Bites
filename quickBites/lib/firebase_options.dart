// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
    apiKey: 'AIzaSyAMyw7sESozwiuCiQB9fIn3x86hWY7s7b4',
    appId: '1:493175847585:web:871d2e9dbf0ce96aaa8ee0',
    messagingSenderId: '493175847585',
    projectId: 'quickbites-47a20',
    authDomain: 'quickbites-47a20.firebaseapp.com',
    storageBucket: 'quickbites-47a20.appspot.com',
    measurementId: 'G-MVCD3D86C3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDpIG3n2UfbuphADMdEDpgvZtlwa0LWt0s',
    appId: '1:493175847585:android:7b6868da16898502aa8ee0',
    messagingSenderId: '493175847585',
    projectId: 'quickbites-47a20',
    storageBucket: 'quickbites-47a20.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB1bnYGHgHClygoDMm2DIPIsfZ4r2Zni50',
    appId: '1:493175847585:ios:7d2e3c3caf664df1aa8ee0',
    messagingSenderId: '493175847585',
    projectId: 'quickbites-47a20',
    storageBucket: 'quickbites-47a20.appspot.com',
    iosBundleId: 'com.example.foodDeliveryApp',
  );
}
