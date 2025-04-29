import 'package:flutter/material.dart';
import 'package:safar_nama/utill/app_route.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF00B4DB),
              Color(0xFF0083B0)
            ], // Bhopal themed gradient
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30),

                // Title
                Text(
                  "Explore Bhopal",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.2,
                  ),
                ),
                SizedBox(height: 40),

                // Buttons
                Expanded(
                  child: ListView(
                    children: [
                      HomeOptionButton(
                        icon: Icons.location_on,
                        label: "Best Places to Visit",
                        onTap: () {
                          Navigator.pushNamed(
                              context, AppRoutes.PLACES_SCREEN_ROUTE);
                        },
                      ),
                      HomeOptionButton(
                        icon: Icons.hotel,
                        label: "Best Hotels",
                        onTap: () {
                          Navigator.pushNamed(
                              context, AppRoutes.HOTELS_SCREEN_ROUTE);
                        },
                      ),
                      HomeOptionButton(
                        icon: Icons.restaurant,
                        label: "Best Restaurants",
                        onTap: () {
                          Navigator.pushNamed(
                              context, AppRoutes.RESTAURANTS_SCREEN_ROUTE);
                        },
                      ),
                      HomeOptionButton(
                        icon: Icons.map,
                        label: "Nearby Places",
                        onTap: () {
                          Navigator.pushNamed(
                              context, AppRoutes.NEARBY_SCREEN_ROUTE);
                        },
                      ),
                      HomeOptionButton(
                        icon: Icons.shopping_bag,
                        label: "Shopping Markets",
                        onTap: () {
                          Navigator.pushNamed(
                              context, AppRoutes.SHOPPING_SCREEN_ROUTE);
                        },
                      ),
                    ],
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

// Reusable Button Widget
class HomeOptionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const HomeOptionButton({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Material(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(15),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Row(
              children: [
                Icon(
                  icon,
                  size: 32,
                  color: Color(0xFF0083B0),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Text(
                    label,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF0083B0),
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: Color(0xFF0083B0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
