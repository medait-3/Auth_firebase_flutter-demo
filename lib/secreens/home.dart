import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('welcome '),
            SizedBox(
              height: 22,
            ),
            Text(user.email!),
            MaterialButton(
              color: Colors.amber,
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              child: Text("sign out"),
            )
          ],
        ),
      ),
    );
  }
}
