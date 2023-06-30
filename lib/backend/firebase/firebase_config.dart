import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAFNzq_knDs36BRKqp1KYhPUhkSEur-icA",
            authDomain: "turnt-acdd3.firebaseapp.com",
            projectId: "turnt-acdd3",
            storageBucket: "turnt-acdd3.appspot.com",
            messagingSenderId: "570275875025",
            appId: "1:570275875025:web:7a14aadc2f544a4fb45df0",
            measurementId: "G-KHLSCSCXN4"));
  } else {
    await Firebase.initializeApp();
  }
}
