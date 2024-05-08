import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:x_finder/utilities/constants.dart';

class Mode extends StatefulWidget {
  const Mode({super.key});

  //  Mode({super.key});
  // final TextEditingController controller;
  @override
  State<Mode> createState() => _ModeState();
}

class _ModeState extends State<Mode> {
  final cwidth = 400.0;
  var cheight = 0.0;
  // ignore: non_constant_identifier_names
  var Show = 'Show';
  double showW = 0;
  double showH = 0;

//for values of X
  final _lowerLimit = TextEditingController();
  final _upperLimit = TextEditingController();
  final _freqBefore = TextEditingController();
  final _freqAfter = TextEditingController();
  final _freq = TextEditingController();

  late int l1 = 0;
  late int l2 = 0;
  late int f = 0;
  // ignore: non_constant_identifier_names
  late int Fa = 0;
  // ignore: non_constant_identifier_names
  late int Fb = 0;

  late int firstBracket = 0;
  late int secondBracket = 0;
  late int thirdBracket = 0;
  late int fourthBracket = 0;

  //multiplication of upper brackets
  late int firstAndSecondBracket = 0;

  //addition of lower brackets
  late int thirdOrLastBracket = 0;

  //right operand answer
  late double rightOperand = 0;

  //final answer
  late double finalAnswer = 0;



  void answer() {
    setState(() {
      l1 = int.parse(_lowerLimit.text);
      l2 = int.parse(_upperLimit.text);
      f = int.parse(_freq.text);
      Fa = int.parse(_freqBefore.text);
      Fb = int.parse(_freqAfter.text);

      firstBracket = f - Fa;
      secondBracket = l2 - l1;
      firstAndSecondBracket = firstBracket * secondBracket;
      thirdBracket = f - Fa;
      fourthBracket = f - Fb;
      thirdOrLastBracket = thirdBracket + fourthBracket;
      rightOperand = firstAndSecondBracket / thirdOrLastBracket;
      finalAnswer = l1 + rightOperand;

      finalAnswer > 0 ? showH = 40 : showH = 0;
      finalAnswer > 0 ? showW = 150 : showW = 0;
    });
  }

  void showSteps() {
    setState(() {
      //animated container for answer
      cheight == 0 ? cheight = 750 : cheight = 0;
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
              const Text('Solve', style: TextStyle(fontFamily: 'Raleway', color: bgColor, letterSpacing: 1, fontWeight: FontWeight.w600, fontSize: 18.0)),
        ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: bgColor,
          leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: const Icon(Icons.arrow_back), color: Colors.white,),
          title: const Text('Mode Solution', style: TextStyle(color: Colors.white,fontFamily: 'Raleway', fontWeight: FontWeight.bold),),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                largeSpace,
                const Text('Enter the required values', style: TextStyle(color: bgColor, fontSize: 20,fontFamily: 'Raleway', fontWeight: FontWeight.w500), ).animate().slide(duration: const Duration(milliseconds: 900),curve: Curves.fastOutSlowIn, begin: const Offset(0,-2), end: const Offset(0, 0)),
                Row(
                  children: [
                    
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _freq,
                          decoration: InputDecoration(
                              hintText: 'f',
                              hintStyle: const TextStyle(fontSize: 17.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _freqBefore,
                          decoration: InputDecoration(
                              hintText: 'Fa',
                              hintStyle: const TextStyle(fontSize: 17.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _freqAfter,
                          decoration: InputDecoration(
                              hintText: 'Fb',
                              hintStyle: const TextStyle(fontSize: 17.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _lowerLimit,
                          decoration: InputDecoration(
                              hintText: 'l1',
                              hintStyle: const TextStyle(fontSize: 17.0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.all(3),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            controller: _upperLimit,
                            decoration: InputDecoration(
                                hintText: 'l2',
                                hintStyle: const TextStyle(fontSize: 17.0),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5))),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                largeSpace,
                AnimatedContainer(
                  height: 125,
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
                              style: const TextStyle(
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
                            fontFamily: 'Raleway',
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.0),
                      )),
                ),
                largeSpace,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: cheight,
                    width: cwidth,
                    child: AnimatedContainer(
                        width: cwidth,
                        height: cheight,
                        duration: const Duration(seconds: 1),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.0)),
                          child: InteractiveViewer(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  largeSpace,
                                  const TableHeading(title: 'Step 1'),
                                  Image.asset('images/mode.jpg'),
                                  largeSpace,
                                  const Divider(),
                                  const TableHeading(title: 'Step 2'),
                                  FomulaStep(first: 'Mode = $l1 + ', second: ' ($f - $Fa)($l2 - $l1)', third: ' ($f - $Fa) + ($f - $Fb)'),
                                  const Divider(),
                                  const TableHeading(title: 'Step 3'),
                                  FomulaStep(first: 'Mode = $l1 + ', second: ' ($firstBracket)($secondBracket)', third: ' ($thirdBracket) + ($fourthBracket)'),
                                  const Divider(),
                                  const TableHeading(title: 'Step 4'),
                                  FomulaStep(first: 'Mode = $l1 + ', second: ' $firstAndSecondBracket', third: ' $thirdOrLastBracket'),
                                  const Divider(),
                                  const TableHeading(title: 'Step 5'),
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Text('Mode = $l1 + $rightOperand',style: const TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500),),
                                   ),
                                  const Divider(),
                                  const TableHeading(title: 'Step 6'),
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Text('Mode = $finalAnswer',style: const TextStyle(fontSize: 20.0,fontWeight: FontWeight.w500),),
                                   ),
                                  const Divider(),
                                ],
                              )),
                        )),
                  ),
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
        style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold,
          fontFamily: 'Raleway',
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
            style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.second,
                style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
              ),
              Image.asset('images/dash.jpg'),
              Text(
                widget.third,
                style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
              ),
            ],
          )
        ],
      ),
    );
  }
}
