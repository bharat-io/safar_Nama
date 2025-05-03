import 'package:flutter/material.dart';
import 'package:safar_nama/utill/app_route.dart';
import 'package:safar_nama/widgets/resaturen_card.dart';

class RestaurentList extends StatefulWidget {
  const RestaurentList({super.key});

  @override
  State<RestaurentList> createState() => _RestaurentListState();
}

class _RestaurentListState extends State<RestaurentList> {
  List<Map<String, dynamic>> restaurantList = [
    {
      "name": "Under The Mango Tree",
      "address":
          "Jehan Numa Palace, Shamla Hills, Bhopal, Madhya Pradesh 462013",
      "cuisine": "North Indian, Barbecue",
      "features": ["Open-air dining", "Live kitchen", "Heritage ambiance"],
      "contact": "+91 74151 58292",
      "imageUrl": "assets/images/under_mango.jpg"
    },
    {
      "name": "Za-aiqa",
      "address":
          "Noor-Us-Sabah Palace, VIP Road, Kohefiza, Bhopal, Madhya Pradesh 462001",
      "cuisine": "Mughlai, North Indian",
      "features": ["Royal dining", "Lake view", "Live music"],
      "contact": "+91 755 4223333",
      "imageUrl": "assets/images/za-aiqa.jpg"
    },
    {
      "name": "Manohar Dairy & Restaurant",
      "address":
          "6, Hamidia Road, Opposite Alpana Talkies, Bhopal, Madhya Pradesh 462001",
      "cuisine": "Indian, Fast Food",
      "features": ["Family-friendly", "Quick service", "Popular sweets"],
      "contact": "+91 755 4050000",
      "imageUrl": "assets/images/manohar.jpg"
    },
    {
      "name": "Bapu Ki Kutia",
      "address": "T.T. Nagar, Roshanpura Square, Bhopal, Madhya Pradesh 462003",
      "cuisine": "North Indian, Vegetarian",
      "features": ["Budget-friendly", "Pure vegetarian", "Homely meals"],
      "contact": "+91 755 2760000",
      "imageUrl": "assets/images/bapu-ki-kutiya.jpg"
    },
    {
      "name": "House of Ming",
      "address":
          "Taj Lakefront, Link Road No. 3, Prempura, Bhopal, Madhya Pradesh 462003",
      "cuisine": "Chinese, Sichuan",
      "features": ["Fine dining", "Elegant ambiance", "Lake view"],
      "contact": "+91 755 4370000",
      "imageUrl": "assets/images/under_mango.jpg"
    },
    {
      "name": "Machan",
      "address":
          "Taj Lakefront, Link Road No. 3, Prempura, Bhopal, Madhya Pradesh 462003",
      "cuisine": "Multi-cuisine",
      "features": ["24-hour service", "Forest-themed decor", "Alfresco dining"],
      "contact": "+91 755 4370000",
      "imageUrl": "assets/images/machan.jpg"
    },
    {
      "name": "Lazeez Hakeem",
      "address": "187/A, Zone-I, M.P. Nagar, Bhopal, Madhya Pradesh 462011",
      "cuisine": "North Indian, Mughlai",
      "features": ["Halal options", "Family-friendly", "Known for Biryani"],
      "contact": "+91 755 2551234",
      "imageUrl": "assets/images/hakkem.jpg"
    },
    {
      "name": "The Urban Courtyard",
      "address": "Gulmohar Colony, Bhopal, Madhya Pradesh 462039",
      "cuisine": "Continental, North Indian",
      "features": ["Rooftop seating", "Live music", "Modern decor"],
      "contact": "+91 755 4923456",
      "imageUrl": "assets/images/urban=courtyard.jpg"
    },
    {
      "name": "Bay Leaf – Fine Dining",
      "address":
          "Courtyard by Marriott, DB City Mall, Arera Hills, Bhopal, Madhya Pradesh 462011",
      "cuisine": "Indian, International",
      "features": ["Elegant ambiance", "Wine selection", "Private dining"],
      "contact": "+91 755 6661000",
      "imageUrl": "assets/images/bay-leaf.jpg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Restaurants in Bhopal"),
        backgroundColor: const Color(0xFF0083B0),
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF00B4DB), Color(0xFF0083B0)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView.builder(
          padding: const EdgeInsets.all(12),
          itemCount: restaurantList.length,
          itemBuilder: (context, index) {
            final restaurant = restaurantList[index];
            return RestaurantCard(
              restaurant: restaurant,
              onTap: () => Navigator.pushNamed(
                context,
                AppRoutes.RESTAURANTS_DETAIL_SCREEN,
                arguments: restaurant,
              ),
            );
          },
        ),
      ),
    );
  }
}
