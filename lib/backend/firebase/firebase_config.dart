import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCqKK58bJaWmWGxGFf1TcPuZ1h12Orw3fc",
            authDomain: "copiaescola-6cd61.firebaseapp.com",
            projectId: "copiaescola-6cd61",
            storageBucket: "copiaescola-6cd61.appspot.com",
            messagingSenderId: "460828799982",
            appId: "1:460828799982:web:fac34da0969d459fcad4ff"));
  } else {
    await Firebase.initializeApp();
  }
}
