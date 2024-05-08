import 'package:flutter/material.dart';
import 'package:x_finder/utilities/solutions/decile.dart';
import 'package:x_finder/utilities/solutions/karl.dart';
import 'package:x_finder/utilities/solutions/median.dart';
import 'package:x_finder/utilities/solutions/mode.dart';
import 'package:x_finder/utilities/solutions/percentile.dart';
import 'package:x_finder/utilities/solutions/quartile.dart';

class ProblemHomescreen extends StatefulWidget {
  const ProblemHomescreen({super.key});

  @override
  State<ProblemHomescreen> createState() => _ProblemHomescreenState();
}

class _ProblemHomescreenState extends State<ProblemHomescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('images/brain.png'),
             
             

             Expanded(child: 
              GridView.count(crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 1.1,
                children: [
                  // GridTiles(title: nBAR CHART', color: const Color.fromARGB(255, 243, 66, 125),icon: Icon(Icons.bar_chart, color: Colors.white60, size: 30),),
                  GestureDetector( onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const KarlPearson())), child: const GridTiles(title: 'SOLVE FOR\nKARL PEARSON', color: Color.fromARGB(255, 83, 163, 228),icon: Icon(Icons.table_chart, color: Colors.white60, size: 30),)),
                  GestureDetector( onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const Mode())), child:const GridTiles(title: 'SOLVE FOR\nMODE', color: Color.fromARGB(255, 94, 215, 98),icon: Icon(Icons.mode, color: Colors.white60, size: 30),)),
                  GestureDetector( onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const Median())), child:const GridTiles(title: 'SOLVE FOR\nMEDIAN', color: Color.fromARGB(255, 243, 179, 83),icon: Icon(Icons.center_focus_strong, color: Colors.white60, size: 30),)),
                  GestureDetector( onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const Quartile())), child:const GridTiles(title: 'SOLVE FOR\nQUARTILE', color: Color.fromARGB(255, 210, 83, 232),icon: Icon(Icons.quora_outlined, color: Colors.white60, size: 30),)),
                  GestureDetector( onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const Decile())), child:const GridTiles(title: 'SOLVE FOR\nDECILE', color: Color.fromARGB(255, 30, 233, 33),icon: Icon(Icons.medical_information, color: Colors.white60, size: 30),)),
                  GestureDetector( onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const Percentile())), child:const GridTiles(title: 'SOLVE FOR\nPERCENTILE', color: Colors.cyan,icon: Icon(Icons.percent, color: Colors.white60, size: 30),)),

                ]
              )
             ),
            ],
          ),
        ),
      ),
    );
  }
}









class GridTiles extends StatefulWidget {
  const GridTiles({super.key, required this.title, required this.color, required this.icon});

  final String title;
  final Color color;
  final Icon icon;
  // final Navigator navigation;
  @override
  State<GridTiles> createState() => _GridTilesState();
}

class _GridTilesState extends State<GridTiles> {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            width: 0.7, color: Colors.black38, style: BorderStyle.solid),
        color: widget.color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: MediaQuery.of(context).size.width > 300 ? const EdgeInsets.all(10) : const EdgeInsets.all(3),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10.0,
            ),
            widget.icon,
            const SizedBox(
              height: 10.0,
            ),
            Text(
              widget.title,
              style: TextStyle(letterSpacing: 1.5, fontFamily: 'Raleway',fontWeight: FontWeight.bold, fontSize: MediaQuery.of(context).size.width >= 300? 16 : 12, color: Colors.white),
            ),
            
           
          ],
        ),
      ),
    );
  }
}
