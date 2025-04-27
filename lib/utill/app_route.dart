import 'package:flutter/material.dart';
import 'package:safar_nama/view/home_screen.dart';
import 'package:safar_nama/view/splash_screen.dart';
import 'package:safar_nama/view/welcome_screen.dart';

class AppRoutes {
  static const SPLASH_SCREEN_ROUTE = '/splash';
  static const HOME_SCREEN_ROUTE = '/home';
  static const WELCOME_SCREEN_ROUTE = '/Welcome';

  static Map<String, WidgetBuilder> getRoutes() => {
        SPLASH_SCREEN_ROUTE: (context) => SplashScreen(),
        HOME_SCREEN_ROUTE: (context) => HomeScreen(),
        WELCOME_SCREEN_ROUTE: (context) => WelcomeScreen(),
      };
}
