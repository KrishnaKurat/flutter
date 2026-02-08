import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA21kxShqW0R5lv7t8sjRQbxCTihuQKG04",
            authDomain: "c-h-tdemand-lhf09w.firebaseapp.com",
            projectId: "c-h-tdemand-lhf09w",
            storageBucket: "c-h-tdemand-lhf09w.firebasestorage.app",
            messagingSenderId: "167632829",
            appId: "1:167632829:web:461fbd68ae6f1c97ca3cd4"));
  } else {
    await Firebase.initializeApp();
  }
}
