import 'package:flutter/material.dart';

class HotelListCard extends StatelessWidget {
  final String hotelName;
  final String imageUrl;
  final int rating;
  final String price;
  final bool hasWifi;

  const HotelListCard({
    super.key,
    required this.hotelName,
    required this.imageUrl,
    required this.rating,
    required this.price,
    required this.hasWifi,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 4,
      color: Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Hotel Image
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
            child: Image.asset(
              imageUrl,
              width: 120,
              height: 140,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Hotel Name
                  Text(
                    hotelName,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0083B0),
                    ),
                  ),
                  SizedBox(height: 6),
                  // Rating Stars
                  Row(
                    children: List.generate(
                      5,
                      (index) => Icon(
                        index < rating ? Icons.star : Icons.star_border,
                        size: 18,
                        color: Color(0xFF00B4DB),
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  // Price
                  Text(
                    'From ₹$price/night',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 8),
                  // Wifi Feature
                  Row(
                    children: [
                      Icon(
                        hasWifi ? Icons.wifi : Icons.wifi_off,
                        size: 18,
                        color: hasWifi ? Color(0xFF00B4DB) : Colors.redAccent,
                      ),
                      SizedBox(width: 6),
                      Text(
                        hasWifi ? 'Free WiFi Available' : 'No WiFi',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
