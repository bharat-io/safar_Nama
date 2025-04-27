import 'package:flutter/material.dart';
import 'package:safar_nama/utill/app_route.dart';
import 'package:safar_nama/view/welcome_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.WELCOME_SCREEN_ROUTE);
                },
                child: Text("Next")),
          )
        ],
      ),
    );
  }
}
