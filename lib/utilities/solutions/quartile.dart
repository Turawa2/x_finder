import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:x_finder/utilities/constants.dart';

class Quartile extends StatefulWidget {
  const Quartile({super.key});

  //  Quartile({super.key});
  // final TextEditingController controller;
  @override
  State<Quartile> createState() => _QuartileState();
}

class _QuartileState extends State<Quartile> {
  final cwidth = 400.0;
  var cheight = 0.0;
  // ignore: non_constant_identifier_names
  var Show = 'Show';
  double showW = 0;
  double showH = 0;

//for values of X
  final _lowerLimit = TextEditingController();
  final _totalFrequency = TextEditingController();
  final _cfBeforeFreq = TextEditingController();
  final _freq = TextEditingController();
  final _classSize = TextEditingController();

  late int L = 0;
  late int N = 0;
  late int F = 0;
  late int f = 0;
  late int C = 0;

  List line = [100, 80, 50];

  int divideByFour = 4;

  late int divideAnswer = 0;
  late int onlyBracket = 0;
  late int bracketAndC = 0;
  late int upperByLower = 0;

  //final answer
  late int finalAnswer = 0;

  void answer() {
    setState(() {
      L = int.parse(_lowerLimit.text);
      N = int.parse(_totalFrequency.text);
      F = int.parse(_cfBeforeFreq.text);
      f = int.parse(_freq.text);
      C = int.parse(_classSize.text);

      divideAnswer = N ~/ divideByFour;
      onlyBracket = divideAnswer - F;
      bracketAndC = onlyBracket * C;
      upperByLower = bracketAndC ~/ f;
      finalAnswer = L + upperByLower;

      finalAnswer > 0 ? showH = 40 : showH = 0;
      finalAnswer > 0 ? showW = 150 : showW = 0;
    });
  }

  void showSteps() {
    setState(() {
      //animated container for answer
      cheight == 0 ? cheight = 900 : cheight = 0;
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
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
            color: Colors.white,
          ),
          title: const Text(
            'Quartile Solution',
            style: TextStyle(color: Colors.white,
                fontFamily: 'Raleway',
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
                 'Enter the required values',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                      color: bgColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ).animate().slide(
                    duration: const Duration(milliseconds: 900),
                    curve: Curves.fastOutSlowIn,
                    begin: const Offset(0, -3),
                    end: const Offset(0, -0)),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          controller: _lowerLimit,
                          decoration: InputDecoration(
                              hintText: 'L',
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
                          controller: _totalFrequency,
                          decoration: InputDecoration(
                              hintText: 'N',
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
                          controller: _cfBeforeFreq,
                          decoration: InputDecoration(
                              hintText: 'F',
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
                          controller: _classSize,
                          decoration: InputDecoration(
                              hintText: 'C',
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
                            controller: _freq,
                            decoration: InputDecoration(
                                hintText: 'f',
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
                            color: Colors.white,
                            fontSize: 16.0,
                            fontFamily: 'Raleway', 
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1.0),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: cheight,
                    width: cwidth,
                    child: AnimatedContainer(
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
                                Image.asset('images/quartile.jpg'),
                                largeSpace,
                                const Divider(),
                                const TableHeading(title: 'Step 2'),
                                Text(
                                  'N = $N',
                                  style: const TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  'N/4 = $N / $divideByFour = $divideAnswer',
                                  style: const TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500),
                                ),
                                largeSpace,
                                const Divider(),
                                const TableHeading(title: 'Step 3'),
                                FomulaStep(
                                    first: 'Quartile = $L + ',
                                    second: ' ($divideAnswer - $F) $C',
                                    third: '       $f'),
                                const Divider(),
                                const TableHeading(title: 'Step 4'),
                                FomulaStep(
                                    first: 'Quartile = $L + ',
                                    second: ' ($onlyBracket) $C',
                                    third: '    $f'),
                                const Divider(),
                                const TableHeading(title: 'Step 5'),
                                FomulaStep(
                                    first: 'Quartile = $L + ',
                                    second: '    $bracketAndC',
                                    third: '    $f'),
                                const Divider(),
                                const TableHeading(title: 'Step 6'),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Quartile = $L + ($upperByLower)',
                                    style: const TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                                const Divider(),
                                const TableHeading(title: 'Step 7'),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Quartile = $finalAnswer',
                                    style: const TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500),
                                  ),
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
