import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:x_finder/utilities/constants.dart';
import 'package:x_finder/utilities/mobile/topics.dart';
import 'package:x_finder/utilities/note/note.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  double introWidth = double.infinity;

  //call note of subject
  final noteList = Tutorial.generateNote();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            largeSpace,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              
              const Text("Hello,\nU're welcome", style: TextStyle(fontSize: 28.0, fontFamily: 'Raleway', fontWeight: FontWeight.bold, color: bgColor),).animate().slide(duration: const Duration(milliseconds: 1500),curve: Curves.fastOutSlowIn,begin: const Offset(-3, -0),end: const Offset(0, -0)),
             
             const Text("continue your learning journey!", style: TextStyle(fontSize: 17.0, fontFamily: 'Raleway', fontWeight: FontWeight.normal, color: bgColor),).animate().slide(duration: const Duration(milliseconds: 1500),curve: Curves.fastOutSlowIn,begin: const Offset(0, 1),end: const Offset(0, -0))
              
              
              ]),
            
           SizedBox(
            width: MediaQuery.of(context).size.width,
            height:70,
             child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                  margin: const EdgeInsets.only(right: 12.0),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      bgColor,
                      bgColor,
                      Color.fromARGB(255, 1, 4, 64),
                      Color.fromARGB(255, 1, 3, 57)

                    ],
                    
                    begin: Alignment.bottomCenter,
                    end: Alignment.bottomRight
                    ),
                    
                  ),
                  
                  child: const Row(
                    children: [
                      Text('23', style: TextStyle(color: Colors.white, fontSize: 33.0, fontWeight: FontWeight.bold),),
                          Text('\tLessons',style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Raleway',
                                fontSize: 18.0,
                                fontWeight: FontWeight.normal)),

                    ],
                  ),
                ),
                


                Container(
                    padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                    margin: const EdgeInsets.only(right: 12.0),
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.cyan,
                            Colors.cyan,
                            Color.fromARGB(255, 1, 221, 214),
                            Color.fromARGB(255, 1, 221, 250),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.bottomRight),
                    ),
                    child: const Row(
                      children: [
                        Text(
                          '15',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 33.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Text('\tFomulas',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Raleway',
                                fontSize: 17.0,
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ),

                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Color.fromARGB(255, 77, 211, 81),
                            Color.fromARGB(255, 66, 185, 70),
                            Colors.green,
                            Colors.green,
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.bottomRight),
                    ),
                    child: const Row(
                      children: [
                        Text(
                          '6',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 33.0,
                              fontWeight: FontWeight.bold),
                        ),
                        Text('\tSolutions',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17.0,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.normal)),
                      ],
                    ),
                  ),
              ],
             ),
           ),
            largeSpace,
            
         

            Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return NotePage(noteList[index]);
                          }));
                        },
                        child: SizedBox(
                          child: Container(
                            decoration: const BoxDecoration(
                                color:Colors.cyan,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(2),
                                )),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 6.0,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width / 24,
                                      height: MediaQuery.of(context).size.width / 24,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(2),
                                          color: Colors.white),
                                    ),
                                    const SizedBox(height: 6.0,),
                                    Text(
                                      noteList[index].topics,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontFamily: 'Raleway',
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.bold, letterSpacing: 1.0),
                                    ),
                                    Text(
                                      noteList[index].note,
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 3,
                                      style: const TextStyle(
                                          fontSize: 17.0,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: 'Raleway',
                                          color: Colors.white,
                                          letterSpacing: 1.0,
                                          wordSpacing: 1.0),
                                    )
                                  ]),
                            ),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox( height: 10.0,),
                    itemCount: noteList.length)),
          const SizedBox(height: 2,)
  
          ],
        ),
      )),
    );
  }
}
