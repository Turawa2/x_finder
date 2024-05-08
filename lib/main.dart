import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:x_finder/Responsive/responsive_layout.dart';
import 'package:x_finder/Responsive/tablet.dart';
import 'package:x_finder/splash_screen/mobile_splash.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return const responsiveLayout(
      mobileScaffold: MobileSplash(),
      tabletScaffold: tabletScaffold());
  }
}
