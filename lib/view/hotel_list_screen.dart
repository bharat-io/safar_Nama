import 'package:flutter/material.dart';
import 'package:safar_nama/widgets/hotel_list_card.dart';

class HotelListScreen extends StatefulWidget {
  const HotelListScreen({super.key});

  @override
  State<HotelListScreen> createState() => _HotelListScreenState();
}

class _HotelListScreenState extends State<HotelListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF00B4DB), Color(0xFF0083B0)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: ListView(
            children: [
              InkWell(
                onTap: () {},
                child: HotelListCard(
                    hotelName: 'Taj Lakefront Bhopal',
                    imageUrl: "assets/images/jahanauma hotel 1.jpg",
                    rating: 4,
                    price: '9870',
                    hasWifi: true),
              ),
              InkWell(
                onTap: () {},
                child: HotelListCard(
                    hotelName: 'Jehan Numa Palace Hotel',
                    imageUrl: "assets/images/jahanauma hotel 1.jpg",
                    rating: 4,
                    price: '9870',
                    hasWifi: true),
              ),
              InkWell(
                onTap: () {},
                child: HotelListCard(
                    hotelName: 'Courtyard by Marriott Bhopal',
                    imageUrl: "assets/images/jahanauma hotel 1.jpg",
                    rating: 4,
                    price: '9870',
                    hasWifi: true),
              ),
              InkWell(
                onTap: () {},
                child: HotelListCard(
                    hotelName: 'Radisson Bhopal',
                    imageUrl: "assets/images/jahanauma hotel 1.jpg",
                    rating: 4,
                    price: '9870',
                    hasWifi: true),
              ),
              InkWell(
                onTap: () {},
                child: HotelListCard(
                    hotelName: 'Hotel Lake View Ashok',
                    imageUrl: "assets/images/jahanauma hotel 1.jpg",
                    rating: 4,
                    price: '9870',
                    hasWifi: true),
              ),
              InkWell(
                onTap: () {},
                child: HotelListCard(
                    hotelName: 'Jehan Numa Retreat Club & Sp',
                    imageUrl: "assets/images/jahanauma hotel 1.jpg",
                    rating: 4,
                    price: '9870',
                    hasWifi: true),
              ),
            ],
          )),
    );
  }
}
