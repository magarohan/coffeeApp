import 'package:flutter/material.dart';
import 'package:coffee_app/services/auth.dart';

class SignIn
    extends StatefulWidget {
  const SignIn(
      {super.key});

  @override
  State<SignIn> createState() =>
      _SignInState();
}

class _SignInState
    extends State<SignIn> {
  final AuthService
      _auth =
      AuthService(); // Instantiating the AuthService

  @override
  Widget
      build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      appBar: AppBar(
        backgroundColor: Colors.brown[400],
        elevation: 0.0,
        title: const Text('Signin'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: ElevatedButton(
          child: const Text('Sign in anonomosly'),
          onPressed: () async {
            dynamic result = await _auth.SignInAnon();
            if (result == null) {
              print('Error signing in');
            } else {
              print('User signed in');
              print(result.uid);
            }
          },
        ),
      ),
    );
  }
}
