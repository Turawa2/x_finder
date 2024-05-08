import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:x_finder/utilities/constants.dart';
import 'package:x_finder/utilities/mobile/list_of_fomulas.dart';

class Fomulas extends StatefulWidget {
  const Fomulas({super.key});

  @override
  State<Fomulas> createState() => _FomulasState();
}

class _FomulasState extends State<Fomulas> {
  @override
  void initState() {
    super.initState();
  }

  //call note of subject
  // ignore: non_constant_identifier_names
  final Fomla = FomulasList.generateFomula();


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
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                "List Of Fomulas",
                style: TextStyle(
                    fontSize: 28.0,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.bold,
                    color: bgColor),
              ).animate().slide(
                  duration: const Duration(milliseconds: 1500),
                  curve: Curves.fastOutSlowIn,
                  begin: const Offset(-3, -0),
                  end: const Offset(0, -0)),
            ]),
            largeSpace,
            Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return SizedBox(
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
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
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          Fomla[index].topics,
                                          style: const TextStyle(
                                              color: bgColor,
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: 'Raleway',
                                              letterSpacing: 1.0),
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              setState(() {
                                                if (Fomla[index].height == 0) {
                                                  Fomla[index].height = 120;
                                                } else {
                                                  Fomla[index].height = 0;
                                                }
                                              });
                                            },
                                            icon: Fomla[index].height == 0 ? const Icon(Icons.arrow_drop_down_circle_outlined) : const Icon(Icons.arrow_drop_up_outlined)
                                                
                                                )
                                      ],
                                    ),
                                    Image.asset(
                                      Fomla[index].mainFomula,
                                      width: 200,
                                    ),
                                    SizedBox(
                                      height: Fomla[index].height,
                                      child: AnimatedContainer(
                                          duration: const Duration(milliseconds: 400),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                Fomla[index].explain1,
                                                style: const TextStyle(
                                                    color: bgColor,
                                                    fontSize: 15.0,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: 'Raleway',
                                                    letterSpacing: 1.0),
                                              ),
                                              Text(
                                                Fomla[index].explain2,
                                                style: const TextStyle(
                                                    color: bgColor,
                                                    fontSize: 15.0,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: 'Raleway',
                                                    letterSpacing: 1.0),
                                              ),
                                              Text(
                                                Fomla[index].explain3,
                                                style: const TextStyle(
                                                    color: bgColor,
                                                    fontSize: 15.0,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: 'Raleway',
                                                    letterSpacing: 1.0),
                                              ),
                                              Text(
                                                Fomla[index].explain4,
                                                style: const TextStyle(
                                                    color: bgColor,
                                                    fontSize: 15.0,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: 'Raleway',
                                                    letterSpacing: 1.0),
                                              ),
                                              Text(
                                                Fomla[index].explain5,
                                                style: const TextStyle(
                                                    color: bgColor,
                                                    fontSize: 15.0,
                                                    fontWeight: FontWeight.w500,
                                                    fontFamily: 'Raleway',
                                                    letterSpacing: 1.0),
                                              ),
                                            ],
                                          )),
                                    )
                                  ]),
                            ),
                          ),
                        );
                    
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                          height: 10.0,
                        ),
                    itemCount: Fomla.length)),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      )),
    );
  }
}
