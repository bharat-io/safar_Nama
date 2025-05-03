import 'package:flutter/material.dart';
import 'package:safar_nama/utill/app_route.dart';
import 'package:safar_nama/view/hotel_detail_screen.dart';
import 'package:safar_nama/widgets/hotel_list_card.dart';

class HotelListScreen extends StatefulWidget {
  const HotelListScreen({super.key});

  @override
  State<HotelListScreen> createState() => _HotelListScreenState();
}

class _HotelListScreenState extends State<HotelListScreen> {
  List<Map<String, dynamic>> hotelDetails = [
    {
      'hotelName': 'Taj Lakefront Bhopal',
      'description': 'Luxurious lakefront hotel with premium amenities.',
      'imageUrl': 'assets/images/taj hotel 1.jpg',
      'rating': 5,
      'price': '9870',
      'hasWifi': true,
    },
    {
      'hotelName': 'Jehan Numa Palace Hotel',
      'description': 'A heritage hotel with modern comfort.',
      'imageUrl': 'assets/images/jahanauma hotel 1.jpg',
      'rating': 4,
      'price': '8700',
      'hasWifi': true,
    },
    {
      'hotelName': 'Courtyard by Marriott Bhopal',
      'description': 'Modern business hotel in city center.',
      'imageUrl': 'assets/images/courtyard 1.jpg',
      'rating': 4,
      'price': '9100',
      'hasWifi': true,
    },
    {
      'hotelName': 'Radisson Bhopal',
      'description': 'Premium hotel with fine dining and spa.',
      'imageUrl': 'assets/images/Radisson Bhopal 1.jpg',
      'rating': 4,
      'price': '9500',
      'hasWifi': true,
    },
    {
      'hotelName': 'Hotel Lake View Ashok',
      'description': 'Great view of Upper Lake and good hospitality.',
      'imageUrl': 'assets/images/hotel ashoka 1.jpg',
      'rating': 3,
      'price': '7900',
      'hasWifi': false,
    },
    {
      'hotelName': 'Jehan Numa Retreat Club & Spa',
      'description': 'Nature-inspired stay with spa facilities.',
      'imageUrl': 'assets/images/jahanauma hotel 1.jpg',
      'rating': 5,
      'price': '10200',
      'hasWifi': true,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF00B4DB), Color(0xFF0083B0)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView.builder(
          itemCount: hotelDetails.length,
          itemBuilder: (context, index) {
            final hotel = hotelDetails[index];
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.HOTEL_DETAIL_SCREEN,
                    arguments: hotel);
              },
              child: HotelListCard(
                hotelName: hotel['hotelName'],
                imageUrl: hotel['imageUrl'],
                rating: hotel['rating'],
                price: hotel['price'],
                hasWifi: hotel['hasWifi'],
              ),
            );
          },
        ),
      ),
    );
  }
}
