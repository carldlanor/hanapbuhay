import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDMKG9i0MJ60I99ndW_4_13fYix4S2QRb4",
            authDomain: "hanapbuhay-a221f.firebaseapp.com",
            projectId: "hanapbuhay-a221f",
            storageBucket: "hanapbuhay-a221f.appspot.com",
            messagingSenderId: "788201307082",
            appId: "1:788201307082:web:2a613e06ed55b254602d33"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(const Home());
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
        backgroundColor: Colors.grey[400],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Icon(
            Icons.abc,
            color: Colors.white,
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),
        ),
      ),
      backgroundColor: Colors.grey[800],
    ));
  }
}
