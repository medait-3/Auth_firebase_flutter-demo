import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthGoogle {
  signINwithgoogle() async {
    //sign in process
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
    //obtation auth from request

    final GoogleSignInAuthentication gAuth = await gUser!.authentication;
    //creat neew user
    final credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken, idToken: gAuth.idToken);
// let signin
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
