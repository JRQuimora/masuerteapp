import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:panorama/panorama.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';

List<String> imgList1 = [
  'assets/Gallery/Blue/1-3.png',
  'assets/Gallery/Blue/4-5.png',
  'assets/Gallery/Blue/6-7.png',
];

List<String> imgList2 = [
  'assets/Gallery/Blue/83-88.jpg',
  'assets/Gallery/Blue/92-97.png',
  'assets/Gallery/Blue/94.png',
  'assets/Gallery/Blue/95.png',
];

List<String> imgList3 = [
  'assets/Gallery/Blue/8-12.png',
];

List<String> imgList4 = [
  'assets/Gallery/Blue/19-20.png',
];

List<String> imgList5 = [
  'assets/Gallery/Blue/23-25, 31-34.png',
  'assets/Gallery/Blue/27.png',
];

List<String> imgList6 = [
  'assets/Gallery/Blue/23-25, 31-34.png',
  'assets/Gallery/Blue/37-38.jpg',
];

List<String> imgList7 = [
  'assets/Gallery/Blue/40-43.png',
  'assets/Gallery/Blue/40-43(1).png',
  'assets/Gallery/Blue/44-46.jpg',
];

List<String> imgList9 = [
  'assets/Gallery/Blue/57-73.jpg',
];

List<String> imgList10 = [
  'assets/Gallery/Blue/57-73.jpg',
  'assets/Gallery/Blue/74-76.png',
];

List<String> imgList11 = [
  'assets/Gallery/Blue/57-73.jpg',
  'assets/Gallery/Blue/74-76.png',
  'assets/Gallery/Blue/75.png',
  'assets/Gallery/Blue/77.png',
  'assets/Gallery/Blue/77.jpg',
  'assets/Gallery/Blue/80.jpg',
  'assets/Gallery/Blue/80.png',
  'assets/Gallery/Blue/81-82.jpg',
  'assets/Gallery/Blue/83-88.jpg',
  'assets/Gallery/Blue/86-87.png',
  'assets/Gallery/Blue/92-97.png',
  'assets/Gallery/Blue/92-97.png',
  'assets/Gallery/Blue/94.png',
  'assets/Gallery/Blue/95.png',
];

List<String> imgList = [];

class BlueThreeDMap extends StatefulWidget {
  const BlueThreeDMap({Key? key}) : super(key: key);

  @override
  State<BlueThreeDMap> createState() => _BlueThreeDMapState();
}

class _BlueThreeDMapState extends State<BlueThreeDMap> {
  String assetPath = "assets/Blue/1.webp";
  String stallNo = "Stall 1-7";
  List<Hotspot> hotspot1 = [];
  List<Hotspot> hotspot2 = [];
  List<Hotspot> hotspot3 = [];
  List<Hotspot> hotspot4 = [];
  List<Hotspot> hotspot5 = [];
  List<Hotspot> hotspot6 = [];
  List<Hotspot> hotspot7 = [];
  List<Hotspot> hotspot8 = [];
  List<Hotspot> hotspot9 = [];
  List<Hotspot> hotspot10 = [];
  List<Hotspot> hotspot11 = [];

  int hotspotId = 1;
  double minLat = 5;
  double minLong = -85;
  double maxLat = 10;
  double maxLong = 50;
  Rect croppedArea = const Rect.fromLTWH(0.2, 0.2, 0.5, 0.5);

  void resetCache() {
    Timer.periodic(const Duration(milliseconds: 30000), (timer) async {
      PaintingBinding.instance.imageCache.clear();
      PaintingBinding.instance.imageCache.clearLiveImages();
    });
  }

  // croppedArea = const Rect.fromLTWH(0.2, 0.2, 1, 0.5);
  // minLong = -180;
  // maxLong = 180;

  // minLat = 5;
  // minLong = -85;
  // maxLat = 10;
  // maxLong = 50;
  // croppedArea = const Rect.fromLTWH(0.2, 0.2, 0.5, 0.5);
  List<Widget> imageSliders = [];
  void refreshImageSliders(List<String> ImageList) {
    setState(() {
      imageSliders = ImageList.map((item) => Container(
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    children: <Widget>[
                      Image.asset(item, fit: BoxFit.fill, width: 1000.0),
                      Positioned(
                        bottom: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(200, 0, 0, 0),
                                Color.fromARGB(0, 0, 0, 0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          )).toList();
    });
  }

  @override
  void initState() {
    refreshImageSliders(imgList1);
    resetCache();
    hotspot1 = [
      Hotspot(
        latitude: 0,
        longitude: -20,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList2);
              setState(() {
                assetPath = "assets/Blue/2.webp";
                hotspotId = 2;
                stallNo = "Stall 83-97";
              });
            },
            icon: const Icon(
              FontAwesomeIcons.solidCircle,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
      Hotspot(
        latitude: 0,
        longitude: -80,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList4);
              setState(() {
                assetPath = "assets/Blue/4.webp";
                hotspotId = 4;
                stallNo = "Stall 15-22";
              });
            },
            icon: const Icon(
              FontAwesomeIcons.solidCircle,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
    ];

    hotspot2 = [
      Hotspot(
        latitude: 0,
        longitude: -35,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList1);
              setState(() {
                assetPath = "assets/Blue/1.webp";
                hotspotId = 1;
                stallNo = "Stall 1-7";
              });
            },
            icon: const Icon(
              FontAwesomeIcons.solidCircle,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
      Hotspot(
        latitude: 0,
        longitude: 50,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList3);
              setState(() {
                assetPath = "assets/Blue/3.webp";
                hotspotId = 3;
                stallNo = "Stall 8-14";
              });
            },
            icon: const Icon(
              FontAwesomeIcons.solidCircle,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
    ];

    hotspot3 = [
      Hotspot(
        latitude: 0,
        longitude: -85,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList2);
              setState(() {
                assetPath = "assets/Blue/2.webp";
                hotspotId = 2;
                stallNo = "Stall 83-97";
              });
            },
            icon: const Icon(
              FontAwesomeIcons.solidCircle,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
      Hotspot(
        latitude: 10,
        longitude: -40,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList4);
              setState(() {
                assetPath = "assets/Blue/4.webp";
                hotspotId = 4;
                stallNo = "Stall 15-22";
              });
            },
            icon: const Icon(
              FontAwesomeIcons.solidCircle,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
      Hotspot(
        latitude: 0,
        longitude: 50,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList6);
              setState(() {
                assetPath = "assets/Blue/6.webp";
                hotspotId = 6;
                stallNo = "Stall 31-39";
              });
            },
            icon: const Icon(
              FontAwesomeIcons.solidCircle,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
    ];

    hotspot4 = [
      Hotspot(
        latitude: 0,
        longitude: 45,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList1);
              setState(() {
                assetPath = "assets/Blue/1.webp";
                hotspotId = 1;
                stallNo = "Stall 1-7";
              });
            },
            icon: const Icon(
              FontAwesomeIcons.solidCircle,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
      Hotspot(
        latitude: 0,
        longitude: -25,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList3);
              setState(() {
                assetPath = "assets/Blue/3.webp";
                hotspotId = 3;
                stallNo = "Stall 8-14";
              });
            },
            icon: const Icon(
              FontAwesomeIcons.solidCircle,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
      Hotspot(
        latitude: 0,
        longitude: -80,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList5);
              setState(() {
                assetPath = "assets/Blue/5.webp";
                hotspotId = 5;
                stallNo = "Stall 23-30";
              });
            },
            icon: const Icon(
              FontAwesomeIcons.solidCircle,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
    ];

    hotspot5 = [
      Hotspot(
        latitude: 0,
        longitude: 50,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList4);
              setState(() {
                assetPath = "assets/Blue/4.webp";
                hotspotId = 4;
                stallNo = "Stall 15-22";
              });
            },
            icon: const Icon(
              FontAwesomeIcons.solidCircle,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
      Hotspot(
        latitude: 0,
        longitude: -15,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList6);
              setState(() {
                assetPath = "assets/Blue/6.webp";
                hotspotId = 6;
                stallNo = "Stall 31-39";
              });
            },
            icon: const Icon(
              FontAwesomeIcons.solidCircle,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
    ];

    hotspot6 = [
      Hotspot(
        latitude: 0,
        longitude: -90,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList3);
              setState(() {
                assetPath = "assets/Blue/3.webp";
                hotspotId = 3;
                stallNo = "Stall 8-14";
              });
            },
            icon: const Icon(
              FontAwesomeIcons.solidCircle,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
      Hotspot(
        latitude: 0,
        longitude: -35,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList5);
              setState(() {
                assetPath = "assets/Blue/5.webp";
                hotspotId = 5;
                stallNo = "Stall 23-30";
              });
            },
            icon: const Icon(
              FontAwesomeIcons.solidCircle,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
      Hotspot(
        latitude: 0,
        longitude: 50,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList7);
              setState(() {
                assetPath = "assets/Blue/7.webp";
                hotspotId = 7;
                stallNo = "Stall 40-48";
              });
            },
            icon: const Icon(
              FontAwesomeIcons.solidCircle,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
    ];

    hotspot7 = [
      Hotspot(
        latitude: 0,
        longitude: -90,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList6);
              setState(() {
                assetPath = "assets/Blue/6.webp";
                hotspotId = 6;
                stallNo = "Stall 31-39";
              });
            },
            icon: const Icon(
              FontAwesomeIcons.solidCircle,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
      Hotspot(
        latitude: 0,
        longitude: -43,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList9);
              setState(() {
                assetPath = "assets/Blue/9.webp";
                hotspotId = 9;
                stallNo = "Stall 57-64";
                minLong = -75;
              });
            },
            icon: const Icon(
              FontAwesomeIcons.solidCircle,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
      Hotspot(
        latitude: 0,
        longitude: 41,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList11);
              setState(() {
                assetPath = "assets/Blue/11.webp";
                hotspotId = 11;
                stallNo = "Stall 74-82,83-97";
              });
            },
            icon: const Icon(
              FontAwesomeIcons.solidCircle,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
    ];

    hotspot8 = [];

    hotspot9 = [
      Hotspot(
        latitude: 0,
        longitude: -12,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList7);
              setState(() {
                assetPath = "assets/Blue/7.webp";
                hotspotId = 7;
                stallNo = "Stall 40-48";
              });
            },
            icon: const Icon(
              FontAwesomeIcons.solidCircle,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
      Hotspot(
        latitude: 0,
        longitude: -65,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList10);
              setState(() {
                assetPath = "assets/Blue/10.webp";
                hotspotId = 10;
                stallNo = "Stall 65-73";
                croppedArea = const Rect.fromLTWH(0.2, 0.2, 1, 0.5);
                minLong = -180;
                maxLong = 180;
              });
            },
            icon: const Icon(
              FontAwesomeIcons.solidCircle,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
    ];

    hotspot10 = [
      Hotspot(
        latitude: 0,
        longitude: 75,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList9);
              setState(() {
                assetPath = "assets/Blue/9.webp";
                hotspotId = 9;
                stallNo = "Stall 57-64";
                minLat = 5;
                minLong = -85;
                maxLat = 10;
                maxLong = 50;
                croppedArea = const Rect.fromLTWH(0.2, 0.2, 0.5, 0.5);
              });
            },
            icon: const Icon(
              FontAwesomeIcons.solidCircle,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
      Hotspot(
        latitude: 0,
        longitude: -35,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList11);
              setState(() {
                assetPath = "assets/Blue/11.webp";
                hotspotId = 11;
                stallNo = "Stall 74-82,83-97";
                minLat = 5;
                minLong = -85;
                maxLat = 10;
                maxLong = 50;
                croppedArea = const Rect.fromLTWH(0.2, 0.2, 0.5, 0.5);
              });
            },
            icon: const Icon(
              FontAwesomeIcons.solidCircle,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
    ];

    hotspot11 = [
      Hotspot(
        latitude: 0,
        longitude: 10,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList10);
              setState(() {
                assetPath = "assets/Blue/10.webp";
                hotspotId = 10;
                stallNo = "Stall 65-73";
                croppedArea = const Rect.fromLTWH(0.2, 0.2, 1, 0.5);
                minLong = -180;
                maxLong = 180;
              });
            },
            icon: const Icon(
              FontAwesomeIcons.solidCircle,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
      Hotspot(
        latitude: 0,
        longitude: -70,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList7);
              setState(() {
                assetPath = "assets/Blue/7.webp";
                hotspotId = 7;
                stallNo = "Stall 40-48";
              });
            },
            icon: const Icon(
              FontAwesomeIcons.solidCircle,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      ),
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Masuerte App | 3D Map',
      home: Scaffold(
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        body: SizedBox(
          child: Stack(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Panorama(
                  sensitivity: 2.0,
                  minLatitude: minLat,
                  maxLatitude: maxLat,
                  minLongitude: minLong,
                  maxLongitude: maxLong,
                  longitude: 30,
                  croppedArea: croppedArea,
                  hotspots: hotspotId == 1
                      ? hotspot1
                      : hotspotId == 2
                          ? hotspot2
                          : hotspotId == 3
                              ? hotspot3
                              : hotspotId == 4
                                  ? hotspot4
                                  : hotspotId == 5
                                      ? hotspot5
                                      : hotspotId == 6
                                          ? hotspot6
                                          : hotspotId == 7
                                              ? hotspot7
                                              : hotspotId == 8
                                                  ? hotspot8
                                                  : hotspotId == 9
                                                      ? hotspot9
                                                      : hotspotId == 10
                                                          ? hotspot10
                                                          : hotspot11,
                  child: Image.asset(assetPath),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 60, 25, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                      alignment: Alignment.topLeft,
                      icon: const FaIcon(
                        FontAwesomeIcons.arrowLeft,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    Text(
                      stallNo,
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          const Icon(
                            FontAwesomeIcons.upRightAndDownLeftFromCenter,
                            color: Colors.white,
                            size: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Pinch to zoom',
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          const Icon(
                            FontAwesomeIcons.solidHandPointer,
                            color: Colors.white,
                            size: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Drag to look around',
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        children: [
                          const Icon(
                            FontAwesomeIcons.solidCircleDot,
                            color: Colors.white,
                            size: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Click on dots to move',
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(bottom: 50),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 150,
                    viewportFraction: 0.8,
                    aspectRatio: 2.0,
                    enlargeCenterPage: false,
                    pageSnapping: false,
                  ),
                  items: imageSliders,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
