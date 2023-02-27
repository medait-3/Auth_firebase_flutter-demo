import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
//:logo
            Image.asset(
              "name",
              height: 150,
            ),
            SizedBox(
              height: 20,
            ),
            //titlle
            Text(
              'sing in ',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            )
          ],
        ),
      )),
    );
  }
}
