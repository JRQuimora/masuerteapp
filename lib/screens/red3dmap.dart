import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:panorama/panorama.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';

List<String> imgList1 = [];

List<String> imgList2 = [
  'assets/Gallery/Red/1-2.jpg',
  'assets/Gallery/Red/3-4.jpg',
];

List<String> imgList3 = [
  'assets/Gallery/Red/9-10_101.png',
];

List<String> imgList4 = [
  'assets/Gallery/Red/9-10_101.png',
];

List<String> imgList5 = [
  'assets/Gallery/Red/9-10_101.png',
];

List<String> imgList6 = [
  'assets/Gallery/Red/16-17.jpg',
];

List<String> imgList7 = [
  'assets/Gallery/Red/25_97-100.png',
  'assets/Gallery/Red/23-24.png',
  'assets/Gallery/Red/21-22.png',
];

List<String> imgList8 = [
  'assets/Gallery/Red/26.png',
  'assets/Gallery/Red/26-27.jpg',
];

List<String> imgList9 = [
  'assets/Gallery/Red/34-35.jpg',
  'assets/Gallery/Red/31-32.png',
];

List<String> imgList10 = [
  'assets/Gallery/Red/39-40.jpg',
  'assets/Gallery/Red/37-38.jpg',
  'assets/Gallery/Red/36.jpg',
];

List<String> imgList11 = [
  'assets/Gallery/Red/41-45.png',
];

List<String> imgList12 = [
  'assets/Gallery/Red/47-48.jpg',
  'assets/Gallery/Red/46-47.png',
];

List<String> imgList13 = [
  'assets/Gallery/Red/54-55.jpg',
  'assets/Gallery/Red/52-53.png',
  'assets/Gallery/Red/51.jpg',
];

List<String> imgList14 = [
  'assets/Gallery/Red/64-64.jpg',
  'assets/Gallery/Red/61-63.jpg',
  'assets/Gallery/Red/59.jpg',
  'assets/Gallery/Red/56-58.jpg',
];

List<String> imgList15 = [
  'assets/Gallery/Red/75-76.jpg',
  'assets/Gallery/Red/73-74.jpg',
  'assets/Gallery/Red/68-69.jpg',
  'assets/Gallery/Red/67.png',
];

List<String> imgList16 = [
  'assets/Gallery/Red/95-96.png',
  'assets/Gallery/Red/92-94.png',
  'assets/Gallery/Red/89-91.jpg',
  'assets/Gallery/Red/85.png',
  'assets/Gallery/Red/84-85.jpg',
  'assets/Gallery/Red/78-79.png',
  'assets/Gallery/Red/77.png',
  'assets/Gallery/Red/75-76.jpg',
  'assets/Gallery/Red/25_97-100.png',
  'assets/Gallery/Red/9-10_101.png',
];

List<String> imgList = [];

class RedThreeDMap extends StatefulWidget {
  const RedThreeDMap({Key? key}) : super(key: key);

  @override
  State<RedThreeDMap> createState() => _RedThreeDMapState();
}

class _RedThreeDMapState extends State<RedThreeDMap> {
  String assetPath = "assets/Red/1.webp";
  String stallNo = "Entrance";
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
  List<Hotspot> hotspot12 = [];
  List<Hotspot> hotspot13 = [];
  List<Hotspot> hotspot14 = [];
  List<Hotspot> hotspot15 = [];
  List<Hotspot> hotspot16 = [];

  int hotspotId = 1;
  double minLat = 5;
  double minLong = -85;
  double maxLat = 10;
  double maxLong = 50;
  Rect croppedArea = const Rect.fromLTWH(0.2, 0.2, 0.5, 0.5);

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

  void resetCache() {
    Timer.periodic(const Duration(milliseconds: 30000), (timer) async {
      PaintingBinding.instance.imageCache.clear();
      PaintingBinding.instance.imageCache.clearLiveImages();
    });
  }

  @override
  void initState() {
    refreshImageSliders(imgList1);
    resetCache();
    hotspot1 = [
      Hotspot(
        latitude: 10,
        longitude: 0,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList2);
              setState(() {
                assetPath = "assets/Red/2.webp";
                hotspotId = 2;
                stallNo = "Stall 1-5";
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

    hotspot2 = [
      Hotspot(
        latitude: 10,
        longitude: -20,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList3);
              setState(() {
                assetPath = "assets/Red/3.webp";
                hotspotId = 3;
                stallNo = "Stall 6-9";
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
        longitude: 125,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              setState(() {
                assetPath = "assets/Red/5.webp";
                hotspotId = 5;
                stallNo = "Stall 11-15";
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

    hotspot3 = [
      Hotspot(
        latitude: 0,
        longitude: 55,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList2);
              setState(() {
                assetPath = "assets/Red/2.webp";
                hotspotId = 2;
                stallNo = "Stall 1-5";
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
        longitude: -15,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList4);
              setState(() {
                assetPath = "assets/Red/4.webp";
                hotspotId = 4;
                stallNo = "Stall 8-10";
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

    hotspot4 = [
      Hotspot(
        latitude: 0,
        longitude: 110,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList3);
              setState(() {
                assetPath = "assets/Red/3.webp";
                hotspotId = 3;
                stallNo = "Stall 6-9";
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
        longitude: 25,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              setState(() {
                assetPath = "assets/Red/5.webp";
                hotspotId = 5;
                stallNo = "Stall 11-15";
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
        longitude: -65,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList7);
              setState(() {
                assetPath = "assets/Red/7.webp";
                hotspotId = 7;
                stallNo = "Stall 21-25";
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

    hotspot5 = [
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
                assetPath = "assets/Red/2.webp";
                hotspotId = 2;
                stallNo = "Stall 1-5";
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
        longitude: -20,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList4);
              setState(() {
                assetPath = "assets/Red/4.webp";
                hotspotId = 4;
                stallNo = "Stall 8-10";
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
        longitude: 40,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList6);
              setState(() {
                assetPath = "assets/Red/6.webp";
                hotspotId = 6;
                stallNo = "Stall 16-20";
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
              refreshImageSliders(imgList5);
              setState(() {
                assetPath = "assets/Red/5.webp";
                hotspotId = 5;
                stallNo = "Stall 11-15";
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
              refreshImageSliders(imgList7);
              setState(() {
                assetPath = "assets/Red/7.webp";
                hotspotId = 7;
                stallNo = "Stall 21-25";
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
        longitude: 35,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList9);
              setState(() {
                assetPath = "assets/Red/9.webp";
                hotspotId = 9;
                stallNo = "Stall 31-35";
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
        longitude: -30,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              setState(() {
                assetPath = "assets/Red/4.webp";
                hotspotId = 4;
                stallNo = "Stall 8-10";
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
        longitude: 145,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList8);
              setState(() {
                assetPath = "assets/Red/8.webp";
                hotspotId = 8;
                stallNo = "Stall 26-30";
                minLat = 5;
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

    hotspot8 = [
      Hotspot(
        latitude: 0,
        longitude: 65,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList7);
              setState(() {
                assetPath = "assets/Red/7.webp";
                hotspotId = 7;
                stallNo = "Stall 21-25";
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
        longitude: -30,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList9);
              setState(() {
                assetPath = "assets/Red/9.webp";
                hotspotId = 9;
                stallNo = "Stall 31-35";
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
        longitude: -120,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList11);
              setState(() {
                assetPath = "assets/Red/11.webp";
                hotspotId = 11;
                stallNo = "Stall 41-45";
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

    hotspot9 = [
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
              refreshImageSliders(imgList6);
              setState(() {
                assetPath = "assets/Red/6.webp";
                hotspotId = 6;
                stallNo = "Stall 16-20";
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
              refreshImageSliders(imgList8);
              setState(() {
                assetPath = "assets/Red/8.webp";
                hotspotId = 8;
                stallNo = "Stall 26-30";
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
        longitude: 55,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList10);
              setState(() {
                assetPath = "assets/Red/10.webp";
                hotspotId = 10;
                stallNo = "Stall 36-40";
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
        longitude: -90,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList9);
              setState(() {
                assetPath = "assets/Red/9.webp";
                hotspotId = 9;
                stallNo = "Stall 31-35";
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
              refreshImageSliders(imgList11);
              setState(() {
                assetPath = "assets/Red/11.webp";
                hotspotId = 11;
                stallNo = "Stall 41-45";
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
        longitude: 40,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList13);
              setState(() {
                assetPath = "assets/Red/13.webp";
                hotspotId = 13;
                stallNo = "Stall 51-55";
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
        longitude: -150,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList12);
              setState(() {
                assetPath = "assets/Red/12.webp";
                hotspotId = 12;
                stallNo = "Stall 46-50";
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
        longitude: -60,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList10);
              setState(() {
                assetPath = "assets/Red/10.webp";
                hotspotId = 10;
                stallNo = "Stall 36-40";
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
        longitude: 30,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList8);
              setState(() {
                assetPath = "assets/Red/8.webp";
                hotspotId = 8;
                stallNo = "Stall 26-30";
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

    hotspot12 = [
      Hotspot(
        latitude: 0,
        longitude: -170,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList15);
              setState(() {
                assetPath = "assets/Red/15.webp";
                hotspotId = 15;
                stallNo = "Stall 66-70,71-75";
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
              refreshImageSliders(imgList13);
              setState(() {
                assetPath = "assets/Red/13.webp";
                hotspotId = 13;
                stallNo = "Stall 51-55";
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
        longitude: 15,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList11);
              setState(() {
                assetPath = "assets/Red/11.webp";
                hotspotId = 11;
                stallNo = "Stall 41-45";
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

    hotspot13 = [
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
              refreshImageSliders(imgList10);
              setState(() {
                assetPath = "assets/Red/10.webp";
                hotspotId = 10;
                stallNo = "Stall 36-40";
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
        longitude: -10,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList12);
              setState(() {
                assetPath = "assets/Red/12.webp";
                hotspotId = 12;
                stallNo = "Stall 46-50";
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
        longitude: 60,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList14);
              setState(() {
                assetPath = "assets/Red/14.webp";
                hotspotId = 14;
                stallNo = "Stall 56-60,61-65";
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

    hotspot14 = [
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
              refreshImageSliders(imgList13);
              setState(() {
                assetPath = "assets/Red/13.webp";
                hotspotId = 13;
                stallNo = "Stall 51-55";
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
        longitude: -10,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList15);
              setState(() {
                assetPath = "assets/Red/15.webp";
                hotspotId = 15;
                stallNo = "Stall 66-70,71-75";
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

    hotspot15 = [
      Hotspot(
        latitude: 0,
        longitude: -170,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList12);
              setState(() {
                assetPath = "assets/Red/12.webp";
                hotspotId = 12;
                stallNo = "Stall 46-50";
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
        longitude: 65,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList14);
              setState(() {
                assetPath = "assets/Red/14.webp";
                hotspotId = 14;
                stallNo = "Stall 56-60,61-65";
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
        longitude: -50,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList16);
              setState(() {
                assetPath = "assets/Red/16.webp";
                hotspotId = 16;
                stallNo = "Stall 76-82,83-105";
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

    hotspot16 = [
      Hotspot(
        latitude: 0,
        longitude: 80,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList15);
              setState(() {
                assetPath = "assets/Red/15.webp";
                hotspotId = 15;
                stallNo = "Stall 66-70,71-75";
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
                                                          : hotspotId == 11
                                                              ? hotspot11
                                                              : hotspotId == 12
                                                                  ? hotspot12
                                                                  : hotspotId ==
                                                                          13
                                                                      ? hotspot13
                                                                      : hotspotId ==
                                                                              14
                                                                          ? hotspot14
                                                                          : hotspotId == 15
                                                                              ? hotspot15
                                                                              : hotspot16,
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
