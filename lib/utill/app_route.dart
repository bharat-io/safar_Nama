import 'package:flutter/material.dart';
import 'package:safar_nama/view/best_place_list.dart';
import 'package:safar_nama/view/home_screen.dart';
import 'package:safar_nama/view/hotel_detail_screen.dart';
import 'package:safar_nama/view/hotel_list_screen.dart';
import 'package:safar_nama/view/place_detail_screen.dart';
import 'package:safar_nama/view/restaurent_detail.dart';
import 'package:safar_nama/view/restaurent_list.dart';
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
  static const String HOTEL_DETAIL_SCREEN = '/detail';
  static const String RESTAURANTS_DETAIL_SCREEN = '/restaurent_detail';
  static const String PLACE_DETAIL_SCREEN = '/place_detail';

  static Map<String, WidgetBuilder> getRoutes() => {
        SPLASH_SCREEN_ROUTE: (context) => SplashScreen(),
        RESTAURANTS_SCREEN_ROUTE: (context) => RestaurentList(),
        HOME_SCREEN_ROUTE: (context) => HomeScreen(),
        HOTELS_SCREEN_ROUTE: (context) => HotelListScreen(),
        PLACES_SCREEN_ROUTE: (context) => BestPlaceList(),
        RESTAURANTS_DETAIL_SCREEN: (context) {
          final arg = ModalRoute.of(context)!.settings.arguments
              as Map<String, dynamic>;
          return RestaurantDetailScreen(restaurant: arg);
        },
        HOTEL_DETAIL_SCREEN: (context) {
          final args = ModalRoute.of(context)!.settings.arguments
              as Map<String, dynamic>;
          return HotelDetailScreen(
            hotelName: args['hotelName'],
            description: args['description'],
            imageUrl: args['imageUrl'],
            rating: args['rating'],
            price: args['price'],
            hasWifi: args['hasWifi'],
          );
        },
        PLACE_DETAIL_SCREEN: (context) {
          final args = ModalRoute.of(context)!.settings.arguments
              as Map<String, dynamic>;
          return PlaceDetailScreen(
            name: args['placeName']!,
            description: args['description']!,
            imageUrl: args['imageUrl']!,
            address: args['address']!,
          );
        }
      };
}
