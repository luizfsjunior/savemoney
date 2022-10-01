import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'Login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(appBarTheme: const AppBarTheme(color: Colors.grey)),
      debugShowCheckedModeBanner: false,
      title: _title,
      home: const Scaffold(
        backgroundColor: Colors.grey,
        body: Login(),
      ),
    );
  }
}
