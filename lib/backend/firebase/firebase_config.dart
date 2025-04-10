import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAx5FrKtjgol6AhD4zFYq86AgkNnvOrXog",
            authDomain: "gaspricetracker-4fbed.firebaseapp.com",
            projectId: "gaspricetracker-4fbed",
            storageBucket: "gaspricetracker-4fbed.firebasestorage.app",
            messagingSenderId: "32290002419",
            appId: "1:32290002419:web:84a26a392ccf1b74a7ee86",
            measurementId: "G-34SX90BQQZ"));
  } else {
    await Firebase.initializeApp();
  }
}
