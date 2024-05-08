import 'package:flutter/material.dart';
import 'package:x_finder/utilities/constants.dart';
import 'package:x_finder/utilities/mobile/topics.dart';

class NotePage extends StatefulWidget {
  final Tutorial getData;
  const NotePage(this.getData, {super.key});

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
 
  final int result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.grey.shade100,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                largeSpace,

                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: bgColor, borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back),
                      color: Colors.white,
                      iconSize: 15.0,
                    ),
                  ),
                ),


                largeSpace,


                Text(
                  widget.getData.topics,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: bgColor,fontFamily: 'Raleway',
                      letterSpacing: 2.0),
                ),
                
              const SizedBox(height: 20.0,),

              Text(widget.getData.note,
              style: const TextStyle(fontSize: 17.0, fontFamily: 'Raleway', 
                color: bgColor
              ),
              ),

              const SizedBox(height: 10.0,),
              Text(
                  widget.getData.note2,
                  style: const TextStyle(fontSize: 17.0,color: bgColor,fontFamily: 'Raleway', fontWeight: FontWeight.w600),
                ),

                Text(
                  widget.getData.note3,
                  style: const TextStyle(fontSize: 17.0,
                      color: bgColor,fontFamily: 'Raleway',),
                ),


                const SizedBox(height: 10.0,),
                
                 Text(
                  widget.getData.note4,
                  style: const TextStyle(fontSize: 17.0,
                    
                      color: bgColor,fontFamily: 'Raleway', fontWeight: FontWeight.w600),
                ),

                 Text(
                  widget.getData.note5,
                  style: const TextStyle(fontSize: 17.0,
                      color: bgColor,fontFamily: 'Raleway',),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
