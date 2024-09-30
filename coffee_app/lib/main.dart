import 'package:flutter/material.dart';
import 'package:coffee_app/wrapper.dart';
import 'package:firebase_core/firebase_core.dart'; // Import Firebase Core

void
    main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Ensure binding
  await Firebase
      .initializeApp(); // Initialize Firebase
  runApp(
      const MyApp());
}

class MyApp
    extends StatelessWidget {
  const MyApp(
      {super.key});

  @override
  Widget
      build(BuildContext context) {
    return const MaterialApp(
      home: Wrapper(),
    );
  }
}
