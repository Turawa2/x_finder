import 'package:flutter/material.dart';

// ignore: camel_case_types
class tabletScaffold extends StatefulWidget {
  const tabletScaffold({super.key});

  @override
  State<tabletScaffold> createState() => _tabletScaffoldState();
}

// ignore: camel_case_types
class _tabletScaffoldState extends State<tabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
       backgroundColor: Colors.black,
        body: SafeArea(
            child: Center(
                child: Text(
          'X - FINDER IS ONLY MOBILE/POTRAIT NOT FOR TAB OR LADSCAPE mode',
          style: TextStyle(color: Colors.white, 
            fontFamily: 'Raleway',
          fontSize: 50
          ),
          textAlign: TextAlign.center,
        ))),
      ),
    );
  }
}
