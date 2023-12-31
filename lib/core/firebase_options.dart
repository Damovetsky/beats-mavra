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
    apiKey: 'AIzaSyD_eGNhLOWfBwMaw7fZCSDTEVSq17kIclI',
    appId: '1:206740748769:web:5cd5f256df6fa567a4faa0',
    messagingSenderId: '206740748769',
    projectId: 'mvara-beats1',
    authDomain: 'mvara-beats1.firebaseapp.com',
    storageBucket: 'mvara-beats1.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC3z47nuXGIxjwgEVKK3sbgG7-n_qqotQM',
    appId: '1:206740748769:android:9836fc16882ba301a4faa0',
    messagingSenderId: '206740748769',
    projectId: 'mvara-beats1',
    storageBucket: 'mvara-beats1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAnzKZFdJKb2RsNHw_3rly8eJc6igIhDSU',
    appId: '1:206740748769:ios:2639154ab98af2dea4faa0',
    messagingSenderId: '206740748769',
    projectId: 'mvara-beats1',
    storageBucket: 'mvara-beats1.appspot.com',
    androidClientId: '206740748769-su4e4k2i1n6pdbkg5k3acmkvoglberof.apps.googleusercontent.com',
    iosClientId: '206740748769-19jinn54vi0anpkb3n4ke30rlsfj1cnd.apps.googleusercontent.com',
    iosBundleId: 'com.mvara.beats',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAnzKZFdJKb2RsNHw_3rly8eJc6igIhDSU',
    appId: '1:206740748769:ios:2639154ab98af2dea4faa0',
    messagingSenderId: '206740748769',
    projectId: 'mvara-beats1',
    storageBucket: 'mvara-beats1.appspot.com',
    androidClientId: '206740748769-su4e4k2i1n6pdbkg5k3acmkvoglberof.apps.googleusercontent.com',
    iosClientId: '206740748769-19jinn54vi0anpkb3n4ke30rlsfj1cnd.apps.googleusercontent.com',
    iosBundleId: 'com.mvara.beats',
  );
}
