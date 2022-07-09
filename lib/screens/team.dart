import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TeamScreen extends StatefulWidget {
  const TeamScreen({Key? key}) : super(key: key);

  @override
  State<TeamScreen> createState() => _TeamScreenState();
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}

class _TeamScreenState extends State<TeamScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Masuerte App | About Us',
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: SizedBox(
          child: Stack(
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.20,
                              color: const Color.fromARGB(255, 250, 255, 106),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.20,
                              color: const Color.fromARGB(255, 106, 185, 255),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.20,
                              color: const Color.fromARGB(255, 196, 106, 255),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.20,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 111, 255, 106),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(40),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.20,
                              color: const Color.fromARGB(255, 255, 106, 106),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.20,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 255, 171, 106),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(40),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.40,
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Team',
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'View all of the people involved in this project.',
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                                color: const Color.fromARGB(255, 70, 70, 70),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const FaIcon(FontAwesomeIcons.arrowLeft),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 100),
                child: ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              20,
                              MediaQuery.of(context).size.height * 0.30 - 100,
                              20,
                              5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.16),
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: const Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 30),
                            child: Row(
                              children: [
                                Container(
                                  width: 70,
                                  height: 70,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 255, 106, 106),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(35),
                                    ),
                                  ),
                                  child: const Align(
                                    alignment: Alignment.center,
                                    child: FaIcon(
                                      FontAwesomeIcons.barsProgress,
                                      size: 35,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Ma. Angelica\nDiscutido',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'Project Manager',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: const Color.fromARGB(
                                              255, 87, 87, 87),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.16),
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: const Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 30),
                            child: Row(
                              children: [
                                Container(
                                  width: 70,
                                  height: 70,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 255, 106, 106),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(35),
                                    ),
                                  ),
                                  child: const Align(
                                    alignment: Alignment.center,
                                    child: FaIcon(
                                      FontAwesomeIcons.chartSimple,
                                      size: 35,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Pol Bryan\nParadero',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'System Analyst',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: const Color.fromARGB(
                                              255, 87, 87, 87),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.16),
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: const Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 30),
                            child: Row(
                              children: [
                                Container(
                                  width: 70,
                                  height: 70,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 255, 106, 106),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(35),
                                    ),
                                  ),
                                  child: const Align(
                                    alignment: Alignment.center,
                                    child: FaIcon(
                                      FontAwesomeIcons.flaskVial,
                                      size: 35,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Karl Marlon\nPiñon',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'Q.A. Tester',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: const Color.fromARGB(
                                              255, 87, 87, 87),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.16),
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: const Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 30),
                            child: Row(
                              children: [
                                Container(
                                  width: 70,
                                  height: 70,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 255, 106, 106),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(35),
                                    ),
                                  ),
                                  child: const Align(
                                    alignment: Alignment.center,
                                    child: FaIcon(
                                      FontAwesomeIcons.computer,
                                      size: 35,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Keneth Jayson\nSoldevilla',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'Programmer',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: const Color.fromARGB(
                                              255, 87, 87, 87),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.16),
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset: const Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 30, vertical: 30),
                            child: Row(
                              children: [
                                Container(
                                  width: 70,
                                  height: 70,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 255, 106, 106),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(35),
                                    ),
                                  ),
                                  child: const Align(
                                    alignment: Alignment.center,
                                    child: FaIcon(
                                      FontAwesomeIcons.gears,
                                      size: 35,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Janine\nDe Guzman',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        'Technical',
                                        style: GoogleFonts.montserrat(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: const Color.fromARGB(
                                              255, 87, 87, 87),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}