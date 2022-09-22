import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_startup/scan.dart';
import 'package:flutter_startup/services/flutter_fire_auth.dart';

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
    final user = FlutterFireAuth(context).getLoggedUser();
    return MaterialApp(
      theme: ThemeData(appBarTheme: const AppBarTheme(color: Colors.green)),
      debugShowCheckedModeBanner: false,
      title: _title,
      home: const Scaffold(
        backgroundColor: Colors.grey,
        body: Login(),
        //body: user != null ? const Home() : const Login(),
      ),
    );
  }
}
