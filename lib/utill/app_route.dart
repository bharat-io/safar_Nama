import 'package:flutter/material.dart';
import 'package:safar_nama/view/home_screen.dart';
import 'package:safar_nama/view/hotel_list_screen.dart';
import 'package:safar_nama/view/splash_screen.dart';
import 'package:safar_nama/view/welcome_screen.dart';

class AppRoutes {
  static const String HOME_SCREEN_ROUTE = '/home';
  static const String SPLASH_SCREEN_ROUTE = '/splash';
  static const String PLACES_SCREEN_ROUTE = '/places';
  static const String HOTELS_SCREEN_ROUTE = '/hotels';
  static const String RESTAURANTS_SCREEN_ROUTE = '/restaurants';
  static const String NEARBY_SCREEN_ROUTE = '/nearby';
  static const String SHOPPING_SCREEN_ROUTE = '/shopping';

  static Map<String, WidgetBuilder> getRoutes() => {
        SPLASH_SCREEN_ROUTE: (context) => SplashScreen(),
        HOME_SCREEN_ROUTE: (context) => HomeScreen(),
        HOTELS_SCREEN_ROUTE: (context) => HotelListScreen(),
      };
}
