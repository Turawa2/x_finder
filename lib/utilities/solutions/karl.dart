import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:x_finder/utilities/constants.dart';

class KarlPearson extends StatefulWidget {
  const KarlPearson({super.key});

  //  KarlPearson({super.key});
  // final TextEditingController controller;
  @override
  State<KarlPearson> createState() => _KarlPearsonState();
}

class _KarlPearsonState extends State<KarlPearson> {
  final cwidth = 400.0;
  var cheight = 0.0;
  // ignore: non_constant_identifier_names
  var Show = 'Show';
  double showW = 0;
  double showH = 0;
  //show answer
  double finalAnswerHeight = 0;
//for values of X
  final _x1 = TextEditingController();
  final _x2 = TextEditingController();
  final _x3 = TextEditingController();
  final _x4 = TextEditingController();
  final _x5 = TextEditingController();
  final _x6 = TextEditingController();
  final _x7 = TextEditingController();
  final _x8 = TextEditingController();
  final _x9 = TextEditingController();
  final _x10 = TextEditingController();

//for values of Y
  final _y1 = TextEditingController();
  final _y2 = TextEditingController();
  final _y3 = TextEditingController();
  final _y4 = TextEditingController();
  final _y5 = TextEditingController();
  final _y6 = TextEditingController();
  final _y7 = TextEditingController();
  final _y8 = TextEditingController();
  final _y9 = TextEditingController();
  final _y10 = TextEditingController();

//change in x
  late int dX1 = 0;
  late int dX2 = 0;
  late int dX3 = 0;
  late int dX4 = 0;
  late int dX5 = 0;
  late int dX6 = 0;
  late int dX7 = 0;
  late int dX8 = 0;
  late int dX9 = 0;
  late int dX10 = 0;
  late int totalDX = 0;

//dX * dX
  late int ddX1 = 0;
  late int ddX2 = 0;
  late int ddX3 = 0;
  late int ddX4 = 0;
  late int ddX5 = 0;
  late int ddX6 = 0;
  late int ddX7 = 0;
  late int ddX8 = 0;
  late int ddX9 = 0;
  late int ddX10 = 0;
  late int totalDDX = 0;

//dY * dY
  late int ddY1 = 0;
  late int ddY2 = 0;
  late int ddY3 = 0;
  late int ddY4 = 0;
  late int ddY5 = 0;
  late int ddY6 = 0;
  late int ddY7 = 0;
  late int ddY8 = 0;
  late int ddY9 = 0;
  late int ddY10 = 0;
  late int totalDDY = 0;

//dX * dY
  late int dXdY1 = 0;
  late int dXdY2 = 0;
  late int dXdY3 = 0;
  late int dXdY4 = 0;
  late int dXdY5 = 0;
  late int dXdY6 = 0;
  late int dXdY7 = 0;
  late int dXdY8 = 0;
  late int dXdY9 = 0;
  late int dXdY10 = 0;
  late int totalDXDY = 0;

//change in y
  late int dY1 = 0;
  late int dY2 = 0;
  late int dY3 = 0;
  late int dY4 = 0;
  late int dY5 = 0;
  late int dY6 = 0;
  late int dY7 = 0;
  late int dY8 = 0;
  late int dY9 = 0;
  late int dY10 = 0;
  late int totalDY = 0;

// total change value
  late int dXTotal = 0;
  late int dYTotal = 0;

  late int sumOfX = 0;
  late int sumOfY = 0;

  late int sumX;
  late int sumY;

  late int totalOfDDXDDY;
  //square root
  late double sqrttotalOfDDXDDY = 0;

  //final answer
  late double finalAnswer = 0;

  //divide total of x or y by 10
  late int byTen = 10;

  void answer() {
    setState(() {
      //show final answer
      //finalAnswerHeight == 0 ? finalAnswerHeight = 125 : finalAnswerHeight = 0;

      sumY = int.parse(_y1.text) +
          int.parse(_y2.text) +
          int.parse(_y3.text) +
          int.parse(_y4.text) +
          int.parse(_y5.text) +
          int.parse(_y6.text) +
          int.parse(_y7.text) +
          int.parse(_y8.text) +
          int.parse(_y9.text) +
          int.parse(_y10.text);

      sumOfY = sumY;
      dYTotal = sumY ~/ byTen;

      sumX = int.parse(_x1.text) +
          int.parse(_x2.text) +
          int.parse(_x3.text) +
          int.parse(_x4.text) +
          int.parse(_x5.text) +
          int.parse(_x6.text) +
          int.parse(_x7.text) +
          int.parse(_x8.text) +
          int.parse(_x9.text) +
          int.parse(_x10.text);

      sumOfX = sumX;
      dXTotal = sumX ~/ byTen;

      //chane in x answers
      dX1 = int.parse(_x1.text) - dXTotal;
      dX2 = int.parse(_x2.text) - dXTotal;
      dX3 = int.parse(_x3.text) - dXTotal;
      dX4 = int.parse(_x4.text) - dXTotal;
      dX5 = int.parse(_x5.text) - dXTotal;
      dX6 = int.parse(_x6.text) - dXTotal;
      dX7 = int.parse(_x7.text) - dXTotal;
      dX8 = int.parse(_x8.text) - dXTotal;
      dX9 = int.parse(_x9.text) - dXTotal;
      dX10 = int.parse(_x10.text) - dXTotal;
      totalDX = dX1 + dX2 + dX3 + dX4 + dX5 + dX6 + dX7 + dX8 + dX9 + dX10;
      //chane in y answers
      dY1 = int.parse(_y1.text) - dYTotal;
      dY2 = int.parse(_y2.text) - dYTotal;
      dY3 = int.parse(_y3.text) - dYTotal;
      dY4 = int.parse(_y4.text) - dYTotal;
      dY5 = int.parse(_y5.text) - dYTotal;
      dY6 = int.parse(_y6.text) - dYTotal;
      dY7 = int.parse(_y7.text) - dYTotal;
      dY8 = int.parse(_y8.text) - dYTotal;
      dY9 = int.parse(_y9.text) - dYTotal;
      dY10 = int.parse(_y10.text) - dYTotal;
      totalDY = dY1 + dY2 + dY3 + dY4 + dY5 + dY6 + dY7 + dY8 + dY9 + dY10;

      //answer for double dx (square)
      ddX1 = dX1 * dX1;
      ddX2 = dX2 * dX2;
      ddX3 = dX3 * dX3;
      ddX4 = dX4 * dX4;
      ddX5 = dX5 * dX5;
      ddX6 = dX6 * dX6;
      ddX7 = dX7 * dX7;
      ddX8 = dX8 * dX8;
      ddX9 = dX9 * dX9;
      ddX10 = dX10 * dX10;
      totalDDX =
          ddX1 + ddX2 + ddX3 + ddX4 + ddX5 + ddX6 + ddX7 + ddX8 + ddX9 + ddX10;

      //answer for double dy (square)
      ddY1 = dY1 * dY1;
      ddY2 = dY2 * dY2;
      ddY3 = dY3 * dY3;
      ddY4 = dY4 * dY4;
      ddY5 = dY5 * dY5;
      ddY6 = dY6 * dY6;
      ddY7 = dY7 * dY7;
      ddY8 = dY8 * dY8;
      ddY9 = dY9 * dY9;
      ddY10 = dY10 * dY10;
      totalDDY =
          ddY1 + ddY2 + ddY3 + ddY4 + ddY5 + ddY6 + ddY7 + ddY8 + ddY9 + ddY10;

      //answer for double dxdy
      dXdY1 = dX1 * dY1;
      dXdY2 = dX2 * dY2;
      dXdY3 = dX3 * dY3;
      dXdY4 = dX4 * dY4;
      dXdY5 = dX5 * dY5;
      dXdY6 = dX6 * dY6;
      dXdY7 = dX7 * dY7;
      dXdY8 = dX8 * dY8;
      dXdY9 = dX9 * dY9;
      dXdY10 = dX10 * dY10;
      totalDXDY = dXdY1 +
          dXdY2 +
          dXdY3 +
          dXdY4 +
          dXdY5 +
          dXdY6 +
          dXdY7 +
          dXdY8 +
          dXdY9 +
          dXdY10;

      totalOfDDXDDY = totalDDX * totalDDY;
      sqrttotalOfDDXDDY = sqrt(totalOfDDXDDY);

      finalAnswer = totalDXDY / sqrttotalOfDDXDDY;
      //final answer steps
       finalAnswer > 0 ? showH = 40 : showH = 0;
      finalAnswer > 0 ? showW = 150 : showW = 0;
      
    });
  }

  void showSteps() {
    setState(() {
      //animated container for answer
      cheight == 0 ? cheight = 700 : cheight = 0;
      Show == 'Show' ? Show = 'Hide' : Show = 'Show';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton.extended(
          onPressed: answer,
          backgroundColor: Colors.greenAccent,
          elevation: 0,
          label:
              const Text('Solve', style: TextStyle(fontFamily: 'Raleway',color: bgColor, fontSize: 18.0)),
        ),
        backgroundColor: Colors.grey.shade100,
        appBar: AppBar(
          backgroundColor: bgColor,
          leadingWidth: 80.0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
            color: Colors.white,
          ),

          title: const Text(
            'Karl Solution',
            style: TextStyle(
                fontFamily: 'Raleway',
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                largeSpace,
                const Text(
                  'Enter the values of (x)',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      color: bgColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ).animate().slide(
                    duration: const Duration(milliseconds: 900),
                    curve: Curves.fastOutSlowIn,
                    begin: const Offset(0, -3),
                    end: const Offset(0, -0)),
                Row(
                  children: [
                    Expanded(
                      child:Container(
                        margin: const EdgeInsets.all(0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _x1,
                          decoration: InputDecoration(
                              hintText: 'x1',
                              hintStyle: const TextStyle(fontFamily: 'Raleway',fontSize: 17.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),),
                    ),
                    Expanded(
                      child:Container(
                        margin: const EdgeInsets.all(0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _x2,
                          decoration: InputDecoration(
                              hintText: 'x2',
                              hintStyle: const TextStyle(fontFamily: 'Raleway',fontSize: 17.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),),
                    ),
                    Expanded(
                      child:Container(
                        margin: const EdgeInsets.all(0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _x3,
                          decoration: InputDecoration(
                              hintText: 'x3',
                              hintStyle: const TextStyle(fontFamily: 'Raleway',fontSize: 17.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),),
                    ),
                    Expanded(
                      child:Container(
                        margin: const EdgeInsets.all(0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _x4,
                          decoration: InputDecoration(
                              hintText: 'x4',
                              hintStyle: const TextStyle(fontFamily: 'Raleway',fontSize: 17.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),),
                    ),
                    Expanded(
                      child:Container(
                        margin: const EdgeInsets.all(0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _x5,
                          decoration: InputDecoration(
                              hintText: 'x5',
                              hintStyle: const TextStyle(fontFamily: 'Raleway',fontSize: 17.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child:Container(
                        margin: const EdgeInsets.all(0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _x6,
                          decoration: InputDecoration(
                              hintText: 'x6',
                              hintStyle: const TextStyle(fontFamily: 'Raleway',fontSize: 17.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),),
                    ),
                    Expanded(
                      child:Container(
                        margin: const EdgeInsets.all(0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _x7,
                          decoration: InputDecoration(
                              hintText: 'x7',
                              hintStyle: const TextStyle(fontFamily: 'Raleway',fontSize: 17.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),),
                    ),
                    Expanded(
                      child:Container(
                        margin: const EdgeInsets.all(0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _x8,
                          decoration: InputDecoration(
                              hintText: 'x8',
                              hintStyle: const TextStyle(fontFamily: 'Raleway',fontSize: 17.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),),
                    ),
                    Expanded(
                      child:Container(
                        margin: const EdgeInsets.all(0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _x9,
                          decoration: InputDecoration(
                              hintText: 'x9',
                              hintStyle: const TextStyle(fontFamily: 'Raleway',fontSize: 17.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),),
                    ),
                    Expanded(
                      child:Container(
                        margin: const EdgeInsets.all(0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _x10,
                          decoration: InputDecoration(
                              hintText: 'x10',
                              hintStyle: const TextStyle(fontFamily: 'Raleway',fontSize: 17.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),),
                    ),
                  ],
                ),
                largeSpace,
                const Text(
                  'Enter the values of (y)',
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      color: bgColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ).animate().slide(
                    duration: const Duration(milliseconds: 900),
                    curve: Curves.fastOutSlowIn,
                    begin: const Offset(0, -3),
                    end: const Offset(0, -0)),
                Row(
                  children: [
                    Expanded(
                      child:Container(
                        margin: const EdgeInsets.all(0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _y1,
                          decoration: InputDecoration(
                              hintText: 'y1',
                              hintStyle: const TextStyle(fontFamily: 'Raleway',fontSize: 17.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),),
                    ),
                    Expanded(
                      child:Container(
                        margin: const EdgeInsets.all(0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _y2,
                          decoration: InputDecoration(
                              hintText: 'y2',
                              hintStyle: const TextStyle(fontFamily: 'Raleway',fontSize: 17.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),),
                    ),
                    Expanded(
                      child:Container(
                        margin: const EdgeInsets.all(0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _y3,
                          decoration: InputDecoration(
                              hintText: 'y3',
                              hintStyle: const TextStyle(fontFamily: 'Raleway',fontSize: 17.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),),
                    ),
                    Expanded(
                      child:Container(
                        margin: const EdgeInsets.all(0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _y4,
                          decoration: InputDecoration(
                              hintText: 'y4',
                              hintStyle: const TextStyle(fontFamily: 'Raleway',fontSize: 17.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),),
                    ),
                    Expanded(
                      child:Container(
                        margin: const EdgeInsets.all(0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _y5,
                          decoration: InputDecoration(
                              hintText: 'y5',
                              hintStyle: const TextStyle(fontFamily: 'Raleway',fontSize: 17.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child:Container(
                        margin: const EdgeInsets.all(0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _y6,
                          decoration: InputDecoration(
                              hintText: 'y6',
                              hintStyle: const TextStyle(fontFamily: 'Raleway',fontSize: 17.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),),
                    ),
                    Expanded(
                      child:Container(
                        margin: const EdgeInsets.all(0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _y7,
                          decoration: InputDecoration(
                              hintText: 'y7',
                              hintStyle: const TextStyle(fontFamily: 'Raleway',fontSize: 17.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),),
                    ),
                    Expanded(
                      child:Container(
                        margin: const EdgeInsets.all(0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _y8,
                          decoration: InputDecoration(
                              hintText: 'y8',
                              hintStyle: const TextStyle(fontFamily: 'Raleway',fontSize: 17.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),),
                    ),
                    Expanded(
                      child:Container(
                        margin: const EdgeInsets.all(0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _y9,
                          decoration: InputDecoration(
                              hintText: 'y9',
                              hintStyle: const TextStyle(fontFamily: 'Raleway',fontSize: 17.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),),
                    ),
                    Expanded(
                      child:Container(
                        margin: const EdgeInsets.all(0),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _y10,
                          decoration: InputDecoration(
                              hintText: 'y10',
                              hintStyle: const TextStyle(fontFamily: 'Raleway',fontSize: 17.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),),
                    ),
                  ],
                ),
                largeSpace,
                largeSpace,
                AnimatedContainer(
                  height: 100,
                  width: 125,
                  duration: const Duration(seconds: 1),
                  child: Column(
                    children: [
                      Container(
                        width: 140,
                        height: 50,
                        decoration: BoxDecoration(
                            color: bgColor,
                            borderRadius: BorderRadius.circular(12.0)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 10.0),
                            child: Text(
                              '$finalAnswer',
                              style: const TextStyle(fontFamily: 'Raleway',
                                  color: Colors.lightBlue, fontSize: 30),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 100),
                  curve: Curves.easeInCirc,
                  width: showW,
                  height: showH,
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.yellow)),
                      onPressed: () {
                        showSteps();
                      },
                      child: Text(
                        '$Show steps',
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.0),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AnimatedContainer(
                      width: cwidth,
                      height: cheight,
                      duration: const Duration(seconds: 1),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.0)),
                        child: ListView(
                          children: [
                            largeSpace,
                            InteractiveViewer(
                              child: Table(
                                border: const TableBorder(
                                    verticalInside: BorderSide(width: 2)),
                                children: [
                                  TableRow(children: [
                                    Image.asset('images/x.jpg'),
                                    Image.asset('images/y.jpg'),
                                    Image.asset('images/dx.jpg'),
                                    Image.asset('images/dy.jpg'),
                                    Image.asset('images/d2.jpg'),
                                    Image.asset('images/dd2.jpg'),
                                    Image.asset('images/dxdy.jpg'),
                                  ]),
                                  TableRow(
                                      decoration: const BoxDecoration(
                                        border: Border(top: BorderSide(width: 2)),
                                      ),
                                      children: [
                                        TableHeading(title: _x1.text),
                                        TableHeading(title: _y1.text),
                                        TableHeading(title: '$dX1'),
                                        TableHeading(title: '$dY1'),
                                        TableHeading(title: '$ddX1'),
                                        TableHeading(title: '$ddY1'),
                                        TableHeading(title: '$dXdY1')
                                      ]),
                                  TableRow(children: [
                                    TableHeading(title: _x2.text),
                                    TableHeading(title: _y2.text),
                                    TableHeading(title: '$dX2'),
                                    TableHeading(title: '$dY2'),
                                    TableHeading(title: '$ddX2'),
                                    TableHeading(title: '$ddY2'),
                                    TableHeading(title: '$dXdY2')
                                  ]),
                                  TableRow(children: [
                                    TableHeading(title: _x3.text),
                                    TableHeading(title: _y3.text),
                                    TableHeading(title: '$dX3'),
                                    TableHeading(title: '$dY3'),
                                    TableHeading(title: '$ddX3'),
                                    TableHeading(title: '$ddY3'),
                                    TableHeading(title: '$dXdY3')
                                  ]),
                                  TableRow(children: [
                                    TableHeading(title: _x4.text),
                                    TableHeading(title: _y4.text),
                                    TableHeading(title: '$dX4'),
                                    TableHeading(title: '$dY4'),
                                    TableHeading(title: '$ddX4'),
                                    TableHeading(title: '$ddY4'),
                                    TableHeading(title: '$dXdY4')
                                  ]),
                                  TableRow(children: [
                                    TableHeading(title: _x5.text),
                                    TableHeading(title: _y5.text),
                                    TableHeading(title: '$dX5'),
                                    TableHeading(title: '$dY5'),
                                    TableHeading(title: '$ddX5'),
                                    TableHeading(title: '$ddY5'),
                                    TableHeading(title: '$dXdY5')
                                  ]),
                                  TableRow(children: [
                                    TableHeading(title: _x6.text),
                                    TableHeading(title: _y6.text),
                                    TableHeading(title: '$dX6'),
                                    TableHeading(title: '$dY6'),
                                    TableHeading(title: '$ddX6'),
                                    TableHeading(title: '$ddY6'),
                                    TableHeading(title: '$dXdY6')
                                  ]),
                                  TableRow(children: [
                                    TableHeading(title: _x7.text),
                                    TableHeading(title: _y7.text),
                                    TableHeading(title: '$dX7'),
                                    TableHeading(title: '$dY7'),
                                    TableHeading(title: '$ddX7'),
                                    TableHeading(title: '$ddY7'),
                                    TableHeading(title: '$dXdY7')
                                  ]),
                                  TableRow(children: [
                                    TableHeading(title: _x8.text),
                                    TableHeading(title: _y8.text),
                                    TableHeading(title: '$dX8'),
                                    TableHeading(title: '$dY8'),
                                    TableHeading(title: '$ddX8'),
                                    TableHeading(title: '$ddY8'),
                                    TableHeading(title: '$dXdY8')
                                  ]),
                                  TableRow(children: [
                                    TableHeading(title: _x9.text),
                                    TableHeading(title: _y9.text),
                                    TableHeading(title: '$dX9'),
                                    TableHeading(title: '$dY9'),
                                    TableHeading(title: '$ddX9'),
                                    TableHeading(title: '$ddY9'),
                                    TableHeading(title: '$dXdY9')
                                  ]),
                                  TableRow(children: [
                                    TableHeading(title: _x10.text),
                                    TableHeading(title: _y10.text),
                                    TableHeading(title: '$dX10'),
                                    TableHeading(title: '$dY10'),
                                    TableHeading(title: '$ddX10'),
                                    TableHeading(title: '$ddY10'),
                                    TableHeading(title: '$dXdY10')
                                  ]),
                                  TableRow(
                                      decoration: const BoxDecoration(
                                        border: Border(top: BorderSide(width: 2)),
                                      ),
                                      children: [
                                        TableHeading(title: '$sumOfX'),
                                        TableHeading(title: '$sumOfY'),
                                        TableHeading(title: '$totalDX'),
                                        TableHeading(title: '$totalDY'),
                                        TableHeading(title: '$totalDDX'),
                                        TableHeading(title: '$totalDDY'),
                                        TableHeading(title: '$totalDXDY')
                                      ]),
                                ],
                              ),
                            ),
                            // largeSpace,
                        
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                largeSpace,
                                const TableHeading(title: 'Step 1'),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const Text('Fomula = ', style: TextStyle(fontSize: 18.0, fontFamily: 'Raleway',fontWeight: FontWeight.bold),),
                                      Image.asset('images/karl.jpg', width: 180.0,),
                                    ],
                                  ),
                                ),
                                largeSpace,
                                const Divider(),
                                const TableHeading(title: 'Step 2'),
                                FomulaStep(first: 'r = ', second: '$totalDXDY', third: '$sqrttotalOfDDXDDY'),
                              
                                const Divider(),
                                const TableHeading(title: 'Step 3'),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'r = $finalAnswer',
                                    style: const TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )),
                )
              ],
            ),
          ),
        )),
      ),
    );
  }
}

class TableHeading extends StatefulWidget {
  const TableHeading({
    super.key,
    required this.title,
  });

  final String title;
  // final Navigator navigation;
  @override
  State<TableHeading> createState() => _TableHeadingState();
}

class _TableHeadingState extends State<TableHeading> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        widget.title,
        style: const TextStyle(
          fontSize: 18.0,
        ),
      ),
    );
  }
}



class FomulaStep extends StatefulWidget {
  const FomulaStep(
      {super.key,
      required this.first,
      required this.second,
      required this.third});
  final String first;
  final String second;
  final String third;

  @override
  State<FomulaStep> createState() => _FomulaStepState();
}

class _FomulaStepState extends State<FomulaStep> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            widget.first,
            style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.second,
                style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 100,
                child: Image.asset('images/divide.jpg'),
              ),
              Text(
                widget.third,
                style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
              ),
            ],
          )
        ],
      ),
    );
  }
}
