import 'package:authfirebase/auth.dart';
import 'package:authfirebase/secreens/home.dart';
import 'package:authfirebase/secreens/login.dart';
import 'package:authfirebase/secreens/singup.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      // home: const Auth(),
      routes: {
        '/': (context) => Auth(),
        'home': (context) => Home(),
        'signup': (context) => Signup(),
        'login': (context) => Login(),
      },
    );
  }
}
