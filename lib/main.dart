import 'package:flutter/material.dart';
import 'package:safar_nama/utill/app_route.dart';
import 'package:safar_nama/view/home_screen.dart';
import 'package:safar_nama/view/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.SPLASH_SCREEN_ROUTE,
      routes: AppRoutes.getRoutes(),
    );
  }
}
