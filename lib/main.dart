import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hanap_buhay/firebase_options.dart';
import 'package:hanap_buhay/screens/login_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform); // Initialize Firebase
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hanapbuhay',
      debugShowCheckedModeBanner: false, // Hide debug banner
      home: const LoginScreen(), // Set LoginScreen as the home screen
    );
  }
}
