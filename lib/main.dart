import 'package:flutter/material.dart';
import 'package:firebase';

void main() {
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
