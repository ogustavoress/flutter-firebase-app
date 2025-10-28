import 'package:flutter/material.dart';

void main() {
  runApp(const FirebaseApp());
}

class FirebaseApp extends StatelessWidget {
  const FirebaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Firebase Auth Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const AuthGuard(child: HomeScreen()),
    );
  }
}
