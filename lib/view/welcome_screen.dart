import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Text("Welcome to flutter developement ")],
      ),
    );
  }
}
