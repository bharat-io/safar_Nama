import 'package:flutter/material.dart';
import 'package:safar_nama/utill/app_route.dart';
import 'package:safar_nama/widgets/place_list_card.dart';

class BestPlaceList extends StatelessWidget {
  const BestPlaceList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> placeList = [
      {
        "placeName": "Upper Lake (Bada Talab)",
        "description":
            "Bhojtal, also known as Upper Lake,[1] is a large lake which lies on the western side of the capital city of Madhya Pradesh, Bhopal, India. It is a major source of drinking water for the residents of the city,.",
        "imageUrl": "assets/images/talab bhopal.jpg",
        "address": "ViP Road bhopal Madhya pradesh"
      },
      {
        "placeName": "Taj-ul-Masajid",
        "description":
            "One of the largest mosques in the world, and the biggest in India, with a capacity of 1,75,000 worshippers, Taj-ul-Masjid, literally translating to “Crown among Mosques” is a resplendent symbol of the Begums of Bhopal's remarkable legacy",
        "imageUrl": "assets/images/tajul_masjid.jpg",
        "address": "NH 12, Kohefiza, Bhopal, Madhya Pradesh 462001"
      },
      {
        "placeName": "Van Vihar National Park",
        "description":
            "Van Vihar National Park and Zoo is one of the most revered National Park and Zoo of Central India and is a shining beacon in the field of conservation.",
        "imageUrl": "assets/images/van-viharh.jpg",
        "address": "Van Vihar National Park in Bhadbhada Road, Bhopal."
      },
      {
        "placeName": "Bharat Bhavan",
        "description":
            "Inaugurated by the then Prime Minister of India, Mrs. Indira Gandhi on 13th February 1982, Bharat Bhavan is multi art centre set up to create an interactive proximity between the verbal, visual and performing arts. Establised and financed by Govt.",
        "imageUrl": "assets/images/bharat_bhawan.jpg",
        "address":
            "J.Swaminathan Marg , Shamla Hills (Near Upper Lake ) Bhopal,"
      },
      {
        "placeName": "Kerwa Dam",
        "description":
            "It is located near Bhopal, the capital city of Madhya Pradesh, and is an important source of water for the city. The area around the dam is a popular picnic spot, and attracts several tourists from Bhopal.",
        "imageUrl": "assets/images/kerwa dam.jpg",
        "address": " Kerwa Dam, Near Village Medhora, Bhopal, ; Pincode: 46204"
      },
      {
        "placeName": "Gohar Mahal ",
        "description":
            "Gohar Mahal, also known as Gauhar Mahal, is a historic palace in Bhopal, India, built in 1820 by Qudsia Begum, the first female ruler of Bhopal.",
        "imageUrl": "assets/images/gohar_mahal.jpg",
        "address":
            "VIP Road, Nakkar Khana, Peer Gate Area, Bhopal, Madhya Pradesh, 462001"
      },
    ];

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF00B4DB), Color(0xFF0083B0)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                const Text(
                  "Top Places to Visit",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 12),
                Expanded(
                  child: ListView.builder(
                    itemCount: placeList.length,
                    itemBuilder: (context, index) {
                      final place = placeList[index];
                      return InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(
                              AppRoutes.PLACE_DETAIL_SCREEN,
                              arguments: place);
                        },
                        child: PlaceListCard(
                          name: place['placeName'],
                          description: place['description'],
                          imageUrl: place['imageUrl'],
                          address: place['address'],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
