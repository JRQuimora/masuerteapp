import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:masuerteapp/screens/blue3dmap.dart';
import 'package:masuerteapp/screens/green3dmap.dart';
import 'package:masuerteapp/screens/orange3dmap.dart';
import 'package:masuerteapp/screens/pink3dmap.dart';
import 'package:masuerteapp/screens/red3dmap.dart';
import 'package:masuerteapp/screens/yellow3dmap.dart';
import 'package:touchable/touchable.dart';

class ViewMapScreen extends StatefulWidget {
  const ViewMapScreen({Key? key}) : super(key: key);

  @override
  State<ViewMapScreen> createState() => _ViewMapScreenState();
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}

class RPSCustomPainter extends CustomPainter {
  final BuildContext context;
  RPSCustomPainter(this.context);

  @override
  void paint(Canvas canvas, Size size) {
    var myCanvas = TouchyCanvas(context, canvas);

    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 54, 54, 54)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path0 = Path();
    path0.moveTo(0, size.height * 0.9555000);
    path0.lineTo(size.width * 0.1750000, size.height * 0.9620000);
    path0.lineTo(size.width * 0.2500000, size.height * 0.8500000);
    path0.lineTo(size.width * 0.6075000, size.height * 0.3020000);
    path0.lineTo(size.width * 0.7800000, size.height * 0.2660000);
    path0.lineTo(size.width * 0.9912500, size.height * 0.2680000);
    path0.lineTo(size.width * 0.9937500, size.height * 0.0260000);
    path0.lineTo(size.width * 0.7750000, size.height * 0.0220000);
    path0.lineTo(size.width * 0.6137500, size.height * 0.0020000);
    path0.lineTo(size.width * 0.4675000, size.height * 0.2080000);
    path0.lineTo(size.width * 0.3662500, size.height * 0.0160000);
    path0.lineTo(size.width * 0.2312500, size.height * 0.2080000);
    path0.lineTo(size.width * 0.3312500, size.height * 0.3960000);
    path0.lineTo(size.width * 0.1512500, size.height * 0.6785000);
    path0.lineTo(0, size.height * 0.9555000);
    path0.close();

    myCanvas.drawPath(path0, paint0);

    Paint paint1 = Paint()
      ..color = const Color.fromARGB(255, 0, 255, 34)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path1 = Path();
    path1.moveTo(size.width * 0.0162500, size.height * 0.9480000);
    path1.lineTo(size.width * 0.0662500, size.height * 0.9460000);
    path1.lineTo(size.width * 0.0675000, size.height * 0.9620000);
    path1.lineTo(size.width * 0.1100000, size.height * 0.9620000);
    path1.lineTo(size.width * 0.1125000, size.height * 0.9420000);
    path1.lineTo(size.width * 0.1650000, size.height * 0.9440000);
    path1.lineTo(size.width * 0.2287500, size.height * 0.8540000);
    path1.lineTo(size.width * 0.1500000, size.height * 0.7080000);
    path1.lineTo(size.width * 0.0162500, size.height * 0.9480000);
    path1.close();

    myCanvas.drawPath(path1, paint1, onTapDown: (TapDownDetails details) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const GreenThreeDMap(),
        ),
      );
    });

    Paint paint2 = Paint()
      ..color = const Color.fromARGB(255, 255, 245, 0)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path2 = Path();
    path2.moveTo(size.width * 0.1600000, size.height * 0.6900000);
    path2.lineTo(size.width * 0.2425000, size.height * 0.8400000);
    path2.lineTo(size.width * 0.3975000, size.height * 0.5960000);
    path2.lineTo(size.width * 0.3162500, size.height * 0.4520000);
    path2.lineTo(size.width * 0.1600000, size.height * 0.6900000);
    path2.close();

    myCanvas.drawPath(path2, paint2, onTapDown: (TapDownDetails details) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const YellowThreeDMap(),
        ),
      );
    });

    Paint paint3 = Paint()
      ..color = const Color.fromARGB(255, 255, 0, 4)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path3 = Path();
    path3.moveTo(size.width * 0.3287500, size.height * 0.4380000);
    path3.lineTo(size.width * 0.4050000, size.height * 0.5800000);
    path3.lineTo(size.width * 0.5425000, size.height * 0.3760000);
    path3.lineTo(size.width * 0.4787500, size.height * 0.2200000);
    path3.lineTo(size.width * 0.3287500, size.height * 0.4380000);
    path3.close();

    myCanvas.drawPath(path3, paint3, onTapDown: (TapDownDetails details) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const RedThreeDMap(),
        ),
      );
    });

    Paint paint4 = Paint()
      ..color = const Color.fromARGB(255, 68, 0, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path4 = Path();
    path4.moveTo(size.width * 0.4900000, size.height * 0.2080000);
    path4.lineTo(size.width * 0.5525000, size.height * 0.3620000);
    path4.lineTo(size.width * 0.6050000, size.height * 0.2860000);
    path4.lineTo(size.width * 0.6762500, size.height * 0.2760000);
    path4.lineTo(size.width * 0.6775000, size.height * 0.2860000);
    path4.lineTo(size.width * 0.7037500, size.height * 0.2820000);
    path4.lineTo(size.width * 0.7025000, size.height * 0.2660000);
    path4.lineTo(size.width * 0.7650000, size.height * 0.2520000);
    path4.lineTo(size.width * 0.7675000, size.height * 0.0460000);
    path4.lineTo(size.width * 0.6150000, size.height * 0.0260000);
    path4.lineTo(size.width * 0.4900000, size.height * 0.2080000);
    path4.close();

    myCanvas.drawPath(path4, paint4, onTapDown: (TapDownDetails details) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const BlueThreeDMap(),
        ),
      );
    });

    Paint paint5 = Paint()
      ..color = const Color.fromARGB(255, 255, 93, 0)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path5 = Path();
    path5.moveTo(size.width * 0.7800000, size.height * 0.0480000);
    path5.lineTo(size.width * 0.7787500, size.height * 0.2460000);
    path5.lineTo(size.width * 0.9775000, size.height * 0.2420000);
    path5.lineTo(size.width * 0.9800000, size.height * 0.0420000);
    path5.lineTo(size.width * 0.7800000, size.height * 0.0480000);
    path5.close();

    myCanvas.drawPath(path5, paint5, onTapDown: (TapDownDetails details) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const OrangeThreeDMap(),
        ),
      );
    });

    Paint paint6 = Paint()
      ..color = const Color.fromARGB(255, 255, 0, 203)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1.0;

    Path path6 = Path();
    path6.moveTo(size.width * 0.2475000, size.height * 0.2160000);
    path6.lineTo(size.width * 0.3412500, size.height * 0.3780000);
    path6.lineTo(size.width * 0.4537500, size.height * 0.2120000);
    path6.lineTo(size.width * 0.3612500, size.height * 0.0420000);
    path6.lineTo(size.width * 0.2475000, size.height * 0.2080000);

    myCanvas.drawPath(path6, paint6, onTapDown: (TapDownDetails details) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const PinkThreeDMap(),
        ),
      );
    });
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _ViewMapScreenState extends State<ViewMapScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Masuerte App | View Map',
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
                              'View Map',
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                fontSize: 50,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Below is the information about us and our goals.',
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
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.40),
                child: ScrollConfiguration(
                  behavior: MyBehavior(),
                  child: SingleChildScrollView(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 50),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Masuerte J4C Tiangge',
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 60),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Click on colored tiles on the map to view it\'s 3D map.',
                                  style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.bold,
                                    color: const Color.fromARGB(
                                        255, 106, 106, 106),
                                    fontSize: 13,
                                  ),
                                ),
                              ),
                            ),
                            CanvasTouchDetector(
                              gesturesToOverride: const [GestureType.onTapDown],
                              builder: (context) => CustomPaint(
                                size: Size(
                                    MediaQuery.of(context).size.width - 70,
                                    ((MediaQuery.of(context).size.width - 70) *
                                            0.625)
                                        .toDouble()),
                                painter: RPSCustomPainter(context),
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
        ),
      ),
    );
  }
}
