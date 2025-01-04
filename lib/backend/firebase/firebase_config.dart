import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDYqiBUkGqxASfTHfNLKRob2G8en9fE3NM",
            authDomain: "task-flow-t0nd31.firebaseapp.com",
            projectId: "task-flow-t0nd31",
            storageBucket: "task-flow-t0nd31.appspot.com",
            messagingSenderId: "509842767371",
            appId: "1:509842767371:web:0455d1b936e1934e7c110e"));
  } else {
    await Firebase.initializeApp();
  }
}
