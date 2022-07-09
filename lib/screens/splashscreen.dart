import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:masuerteapp/screens/home.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int _start = 2;

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Masuerte App | Home',
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/splashscreen/image.jpg"),
              fit: BoxFit.fitHeight,
              alignment: Alignment.bottomLeft,
              opacity: 0.2,
            ),
            color: Colors.white,
          ),
          child: Center(
            child: Text(
              "Masuerte\n3D Map App",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                height: 1.2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
