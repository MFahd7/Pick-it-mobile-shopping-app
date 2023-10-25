import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAgl5hCOsdM-5C0EZ1ihcdYsjoQTawLVEk",
            authDomain: "pick-it-db.firebaseapp.com",
            projectId: "pick-it-db",
            storageBucket: "pick-it-db.appspot.com",
            messagingSenderId: "108140672528",
            appId: "1:108140672528:web:39ebe316ec31377e2ffc95"));
  } else {
    await Firebase.initializeApp();
  }
}
