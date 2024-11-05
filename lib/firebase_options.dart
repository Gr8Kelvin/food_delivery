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
        return macos;
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyCVGti242tyvnYQnkopjDRrtG_etWLGk3g',
    appId: '1:655268685897:web:5933fbf8d8d3520c32b798',
    messagingSenderId: '655268685897',
    projectId: 'food-delivery-94834',
    authDomain: 'food-delivery-94834.firebaseapp.com',
    storageBucket: 'food-delivery-94834.firebasestorage.app',
    measurementId: 'G-VV47M96KRZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCz6MQRBnT0BoM5ItQAGCLMl56h_Jyg-6o',
    appId: '1:655268685897:android:cdee83328166205b32b798',
    messagingSenderId: '655268685897',
    projectId: 'food-delivery-94834',
    storageBucket: 'food-delivery-94834.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB-sIhqbHSENI0YCxgPU-kjPyq_0u-l6os',
    appId: '1:655268685897:ios:e5e73e1dea780ae532b798',
    messagingSenderId: '655268685897',
    projectId: 'food-delivery-94834',
    storageBucket: 'food-delivery-94834.firebasestorage.app',
    iosBundleId: 'com.example.foodDelivery',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB-sIhqbHSENI0YCxgPU-kjPyq_0u-l6os',
    appId: '1:655268685897:ios:e5e73e1dea780ae532b798',
    messagingSenderId: '655268685897',
    projectId: 'food-delivery-94834',
    storageBucket: 'food-delivery-94834.firebasestorage.app',
    iosBundleId: 'com.example.foodDelivery',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCVGti242tyvnYQnkopjDRrtG_etWLGk3g',
    appId: '1:655268685897:web:798e6bce255031f232b798',
    messagingSenderId: '655268685897',
    projectId: 'food-delivery-94834',
    authDomain: 'food-delivery-94834.firebaseapp.com',
    storageBucket: 'food-delivery-94834.firebasestorage.app',
    measurementId: 'G-0615F9RCHC',
  );
}
