import 'package:flutter/material.dart';
import 'package:masuerteapp/screens/about.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:masuerteapp/screens/contact.dart';
import 'package:masuerteapp/screens/team.dart';
import 'package:masuerteapp/screens/viewmap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Masuerte App | Home',
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
                              'Menu',
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Click on any available options.',
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
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(
                    20, MediaQuery.of(context).size.height * 0.30, 20, 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ViewMapScreen()),
                                  );
                                },
                                child: Container(
                                  height: 250,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 26, 26, 26),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                        offset: const Offset(0, 0),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 70,
                                          height: 70,
                                          margin:
                                              const EdgeInsets.only(bottom: 15),
                                          decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 111, 255, 106),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(35),
                                            ),
                                          ),
                                          child: const Align(
                                            alignment: Alignment.center,
                                            child: FaIcon(
                                              FontAwesomeIcons.mapLocationDot,
                                              size: 30,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'VIEW\nMAP',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17,
                                              color: Colors.white),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Text(
                                            'Here you can see the floor plan as well as the 3D view of it.',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                              color: const Color.fromARGB(
                                                  255, 162, 162, 162),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const AboutUsScreen()),
                                  );
                                },
                                child: Container(
                                  height: 250,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 26, 26, 26),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                        offset: const Offset(0, 0),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: 70,
                                          height: 70,
                                          margin:
                                              const EdgeInsets.only(bottom: 15),
                                          decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 111, 255, 106),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(35),
                                            ),
                                          ),
                                          child: const Align(
                                            alignment: Alignment.center,
                                            child: FaIcon(
                                              FontAwesomeIcons.solidBuilding,
                                              size: 30,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'ABOUT\nUS',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17,
                                              color: Colors.white),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Text(
                                            'Here you can view information about us and our goal.',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                              color: const Color.fromARGB(
                                                  255, 162, 162, 162),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const TeamScreen()),
                                  );
                                },
                                child: Container(
                                  height: 250,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 26, 26, 26),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                        offset: const Offset(0, 0),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Column(
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(bottom: 15),
                                          width: 70,
                                          height: 70,
                                          decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 111, 255, 106),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(35),
                                            ),
                                          ),
                                          child: const Align(
                                            alignment: Alignment.center,
                                            child: FaIcon(
                                              FontAwesomeIcons.users,
                                              size: 30,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'TEAM',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17,
                                              color: Colors.white),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Text(
                                            'Here you can see who are the people involved in this.',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                              color: const Color.fromARGB(
                                                  255, 162, 162, 162),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ContactScreen()),
                                  );
                                },
                                child: Container(
                                  height: 250,
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 26, 26, 26),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(15),
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.3),
                                        spreadRadius: 1,
                                        blurRadius: 10,
                                        offset: const Offset(0, 0),
                                      ),
                                    ],
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(20),
                                    child: Column(
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(bottom: 15),
                                          width: 70,
                                          height: 70,
                                          decoration: const BoxDecoration(
                                            color: Color.fromARGB(
                                                255, 111, 255, 106),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(35),
                                            ),
                                          ),
                                          child: const Align(
                                            alignment: Alignment.center,
                                            child: FaIcon(
                                              FontAwesomeIcons.squarePhoneFlip,
                                              size: 30,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'CONTACT\nUS',
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 17,
                                              color: Colors.white),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 10),
                                          child: Text(
                                            'Here you can view on how to contact us.',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.montserrat(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 12,
                                              color: const Color.fromARGB(
                                                  255, 162, 162, 162),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
