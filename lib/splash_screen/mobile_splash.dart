import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:x_finder/Responsive/mobile.dart';

class MobileSplash extends StatefulWidget {
  const MobileSplash({super.key});

  @override
  State<MobileSplash> createState() => _MobileSplashState();
}

class _MobileSplashState extends State<MobileSplash> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: AnimatedSplashScreen(
          backgroundColor: Colors.grey.shade100,
          splash: const Text('X - FINDER',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 1, 37),
              fontSize: 35.0,
              fontFamily: 'Raleway',
            ),
          ),
          nextScreen:  const MobileScaffold(),
        ),
      ),
    );
  }
}