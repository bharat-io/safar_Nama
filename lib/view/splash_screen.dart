import 'dart:async';
import 'package:flutter/material.dart';
import 'package:safar_nama/utill/app_route.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _planeController;
  late Animation<Offset> _planeAnimation;

  late AnimationController _textController;
  late Animation<double> _textAnimation;

  @override
  void initState() {
    super.initState();

    // Plane Controller - slower now
    _planeController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5), // Slower plane (6 seconds)
    )..forward();

    _planeAnimation = Tween<Offset>(
      begin: Offset(-1.5, 0.0),
      end: Offset(1.5, -0.5),
    ).animate(CurvedAnimation(
      parent: _planeController,
      curve: Curves.easeInOut,
    ));

    // Text Animation Controller
    _textController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..forward();

    _textAnimation = CurvedAnimation(
      parent: _textController,
      curve: Curves.easeIn,
    );

    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, AppRoutes.HOME_SCREEN_ROUTE);
    });
  }

  @override
  void dispose() {
    _planeController.dispose();
    _textController.dispose();
    super.dispose();
  }

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
        child: Stack(
          children: [
            // Animated text part
            Center(
              child: FadeTransition(
                opacity: _textAnimation,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "SafarNama",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.5,
                        shadows: [
                          Shadow(
                            blurRadius: 8,
                            color: Colors.black.withOpacity(0.5),
                            offset: Offset(2, 2),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Adventure awaits...",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white70,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Flying Plane Animation
            SlideTransition(
              position: _planeAnimation,
              child: Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.flight_takeoff,
                  size: 100,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
