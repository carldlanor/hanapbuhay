import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  // await dotenv.load(fileName: ".env");
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
  // void initState() {
  //   print(dotenv.env['APIKEY']);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Hanapbuhay'),
        centerTitle: true,
        backgroundColor: Colors.grey[400],
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Log in',
                style: TextStyle(fontSize: 15.0, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            ),
            const SizedBox(
              height: 16.0,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Sign up',
                style: TextStyle(fontSize: 15.0, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            ),
          ]),
      backgroundColor: Colors.grey[200],
    ));
  }
}
