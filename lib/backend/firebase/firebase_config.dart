import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB7z8Ub94Y412WzQk1u_R3F2s5Va-XbvLU",
            authDomain: "ecomm-qgph2k.firebaseapp.com",
            projectId: "ecomm-qgph2k",
            storageBucket: "ecomm-qgph2k.appspot.com",
            messagingSenderId: "863472465679",
            appId: "1:863472465679:web:a7a52be818a50fae9ff07a"));
  } else {
    await Firebase.initializeApp();
  }
}
