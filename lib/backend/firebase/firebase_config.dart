import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyACBS8Hkt3SzdorBSzZkjeq8wD4du3MGI0",
            authDomain: "real-nyd3om.firebaseapp.com",
            projectId: "real-nyd3om",
            storageBucket: "real-nyd3om.appspot.com",
            messagingSenderId: "912305895541",
            appId: "1:912305895541:web:9b0937834c782a0412a03c"));
  } else {
    await Firebase.initializeApp();
  }
}
