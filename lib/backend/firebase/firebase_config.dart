import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCBdivZPRnmjZ7fObPIQTd9Q9y7ksjfAP0",
            authDomain: "sou-igreja-psrzx8.firebaseapp.com",
            projectId: "sou-igreja-psrzx8",
            storageBucket: "sou-igreja-psrzx8.appspot.com",
            messagingSenderId: "345054554535",
            appId: "1:345054554535:web:44edef35562d42fce32e82"));
  } else {
    await Firebase.initializeApp();
  }
}
