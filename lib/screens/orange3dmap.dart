import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:panorama/panorama.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';

List<String> imgList1 = [
  'assets/Gallery/Orange/1-5.jpg',
];

List<String> imgList2 = [
  'assets/Gallery/Orange/19-20.png',
  'assets/Gallery/Orange/14_24.png',
  'assets/Gallery/Orange/24_14.png',
  'assets/Gallery/Orange/25.png',
  'assets/Gallery/Orange/26.png',
];

List<String> imgList3 = [
  'assets/Gallery/Orange/31-34.png',
  'assets/Gallery/Orange/48-50.png',
];

List<String> imgList4 = [
  'assets/Gallery/Orange/56.png',
  'assets/Gallery/Orange/57.png',
  'assets/Gallery/Orange/71.png',
  'assets/Gallery/Orange/72.png',
  'assets/Gallery/Orange/73.png',
];

List<String> imgList5 = [
  'assets/Gallery/Orange/79-80.png',
  'assets/Gallery/Orange/95.png',
];

List<String> imgList6 = [
  'assets/Gallery/Orange/120.png',
  'assets/Gallery/Orange/121-122.png',
];

List<String> imgList7 = [
  'assets/Gallery/Orange/127-128.png',
  'assets/Gallery/Orange/129.png',
];

List<String> imgList8 = [
  'assets/Gallery/Orange/150-151.png',
  'assets/Gallery/Orange/152.png',
  'assets/Gallery/Orange/154.png',
  'assets/Gallery/Orange/166.png',
  'assets/Gallery/Orange/169.png',
];

List<String> imgList9 = [
  'assets/Gallery/Orange/174-176.png',
];

List<String> imgList10 = [
  'assets/Gallery/Orange/185-188.png',
  'assets/Gallery/Orange/189.png',
];

List<String> imgList11 = [
  'assets/Gallery/Orange/41_162-163.png',
  'assets/Gallery/Orange/166.png',
];

List<String> imgList12 = [
  'assets/Gallery/Orange/131-132.png',
  'assets/Gallery/Orange/137-139.png',
];

List<String> imgList13 = [
  'assets/Gallery/Orange/107-108.png',
  'assets/Gallery/Orange/109.png',
];

List<String> imgList14 = [
  'assets/Gallery/Orange/86-87.png',
];

List<String> imgList15 = [
  'assets/Gallery/Orange/61.png',
  'assets/Gallery/Orange/62-63.png',
];

List<String> imgList16 = [
  'assets/Gallery/Orange/36-37.png',
  'assets/Gallery/Orange/38-40_44.png',
];

List<String> imgList17 = [
  'assets/Gallery/Orange/41_162-163.png',
  'assets/Gallery/Orange/42.png',
  'assets/Gallery/Orange/38-40_44.png',
];

List<String> imgList = [];

class OrangeThreeDMap extends StatefulWidget {
  const OrangeThreeDMap({Key? key}) : super(key: key);

  @override
  State<OrangeThreeDMap> createState() => _OrangeThreeDMapState();
}

class _OrangeThreeDMapState extends State<OrangeThreeDMap> {
  String assetPath = "assets/Orange/1.webp";
  String stallNo = "Stall 1-5";
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
  List<Hotspot> hotspot17 = [];

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
        longitude: -50,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList2);
              setState(() {
                assetPath = "assets/Orange/2.webp";
                hotspotId = 2;
                stallNo = "Stall 17-22,23-27";
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
        latitude: 0,
        longitude: 160,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList1);
              setState(() {
                assetPath = "assets/Orange/1.webp";
                hotspotId = 1;
                stallNo = "Stall 1-5";
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
        longitude: 65,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList17);
              setState(() {
                assetPath = "assets/Orange/17.webp";
                hotspotId = 17;
                stallNo = "Stall 41-46";
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
              refreshImageSliders(imgList3);
              setState(() {
                assetPath = "assets/Orange/3.webp";
                hotspotId = 3;
                stallNo = "Stall 30-34,48-51";
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
        longitude: -13,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList2);
              setState(() {
                assetPath = "assets/Orange/2.webp";
                hotspotId = 2;
                stallNo = "Stall 17-22,23-27";
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
        latitude: 5,
        longitude: -109,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList4);
              setState(() {
                assetPath = "assets/Orange/4.webp";
                hotspotId = 4;
                stallNo = "Stall 54-57,71-75";
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
        longitude: 65,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList3);
              setState(() {
                assetPath = "assets/Orange/3.webp";
                hotspotId = 3;
                stallNo = "Stall 30-34,48-51";
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
        longitude: -20,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList17);
              setState(() {
                assetPath = "assets/Orange/17.webp";
                hotspotId = 17;
                stallNo = "Stall 41-46";
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
        latitude: 5,
        longitude: -110,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList5);
              setState(() {
                assetPath = "assets/Orange/5.webp";
                hotspotId = 5;
                stallNo = "Stall 78-81,95-99";

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

    hotspot5 = [
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
              refreshImageSliders(imgList4);
              setState(() {
                assetPath = "assets/Orange/4.webp";
                hotspotId = 4;
                stallNo = "Stall 54-57,71-75";
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
        longitude: -4,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList16);
              setState(() {
                assetPath = "assets/Orange/16.webp";
                hotspotId = 16;
                stallNo = "Stall 35-40";
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
        longitude: -63,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList6);
              setState(() {
                assetPath = "assets/Orange/6.webp";
                hotspotId = 6;
                stallNo = "Stall 102-105,120-123";
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
        longitude: 53,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList5);
              setState(() {
                assetPath = "assets/Orange/5.webp";
                hotspotId = 5;
                stallNo = "Stall 78-81,95-99";
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
        longitude: -6,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList15);
              setState(() {
                assetPath = "assets/Orange/15.webp";
                hotspotId = 15;
                stallNo = "Stall 59-64,65-70";
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
                assetPath = "assets/Orange/7.webp";
                hotspotId = 7;
                stallNo = "Stall 126-129,143-147";
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
        longitude: 55,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList6);
              setState(() {
                assetPath = "assets/Orange/6.webp";
                hotspotId = 6;
                stallNo = "Stall 102-105,120-123";
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
        longitude: -7,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList14);
              setState(() {
                assetPath = "assets/Orange/14.webp";
                hotspotId = 14;
                stallNo = "Stall 83-88,89-94";
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
        longitude: -65,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList8);
              setState(() {
                assetPath = "assets/Orange/8.webp";
                hotspotId = 8;
                stallNo = "Stall 150-154,165-171";
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
                assetPath = "assets/Orange/7.webp";
                hotspotId = 7;
                stallNo = "Stall 126-129,143-147";
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
        longitude: -7,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList13);
              setState(() {
                assetPath = "assets/Orange/13.webp";
                hotspotId = 13;
                stallNo = "Stall 107-112,113-118";
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
              refreshImageSliders(imgList9);
              setState(() {
                assetPath = "assets/Orange/9.webp";
                hotspotId = 9;
                stallNo = "Stall 174-178,191-195";
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
        longitude: 55,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList8);
              setState(() {
                assetPath = "assets/Orange/8.webp";
                hotspotId = 8;
                stallNo = "Stall 150-154,165-171";
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
        longitude: -5,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList12);
              setState(() {
                assetPath = "assets/Orange/12.webp";
                hotspotId = 12;
                stallNo = "Stall 131-135,137-142";
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
                assetPath = "assets/Orange/10.webp";
                hotspotId = 10;
                stallNo = "Stall 179-183,185-190";
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
        longitude: 45,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList9);
              setState(() {
                assetPath = "assets/Orange/9.webp";
                hotspotId = 9;
                stallNo = "Stall 174-178,191-195";
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
        longitude: -40,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList11);
              setState(() {
                assetPath = "assets/Orange/11.webp";
                hotspotId = 11;
                stallNo = "Stall 155-159,161-166";
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
        longitude: 60,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList10);
              setState(() {
                assetPath = "assets/Orange/10.webp";
                hotspotId = 10;
                stallNo = "Stall 179-183,185-190";
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
        longitude: -13,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList12);
              setState(() {
                assetPath = "assets/Orange/12.webp";
                hotspotId = 12;
                stallNo = "Stall 131-135,137-142";
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

    hotspot12 = [
      Hotspot(
        latitude: 0,
        longitude: 70,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList11);
              setState(() {
                assetPath = "assets/Orange/11.webp";
                hotspotId = 11;
                stallNo = "Stall 155-159,161-166";
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
        longitude: -110,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList13);
              setState(() {
                assetPath = "assets/Orange/13.webp";
                hotspotId = 13;
                stallNo = "Stall 107-112,113-118";
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
        longitude: -18,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList9);
              setState(() {
                assetPath = "assets/Orange/9.webp";
                hotspotId = 9;
                stallNo = "Stall 174-178,191-195";
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
        longitude: 155,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList12);
              setState(() {
                assetPath = "assets/Orange/12.webp";
                hotspotId = 12;
                stallNo = "Stall 131-135,137-142";
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
        longitude: -25,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList14);
              setState(() {
                assetPath = "assets/Orange/14.webp";
                hotspotId = 14;
                stallNo = "Stall 83-88,89-94";
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
        latitude: 5,
        longitude: 73,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList8);
              setState(() {
                assetPath = "assets/Orange/8.webp";
                hotspotId = 8;
                stallNo = "Stall 150-154,165-171";
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

    hotspot14 = [
      Hotspot(
        latitude: 0,
        longitude: 152,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList13);
              setState(() {
                assetPath = "assets/Orange/13.webp";
                hotspotId = 13;
                stallNo = "Stall 107-112,113-118";
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
        longitude: -22,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList15);
              setState(() {
                assetPath = "assets/Orange/15.webp";
                hotspotId = 15;
                stallNo = "Stall 59-64,65-70";
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
        latitude: 5,
        longitude: 71,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList7);
              setState(() {
                assetPath = "assets/Orange/7.webp";
                hotspotId = 7;
                stallNo = "Stall 126-129,143-147";
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

    hotspot15 = [
      Hotspot(
        latitude: 0,
        longitude: -7,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList14);
              setState(() {
                assetPath = "assets/Orange/14.webp";
                hotspotId = 14;
                stallNo = "Stall 83-88,89-94";
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
        longitude: 168,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList16);
              setState(() {
                assetPath = "assets/Orange/16.webp";
                hotspotId = 16;
                stallNo = "Stall 35-40";
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
        latitude: 5,
        longitude: -97,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList6);
              setState(() {
                assetPath = "assets/Orange/6.webp";
                hotspotId = 6;
                stallNo = "Stall 102-105,120-123";
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

    hotspot16 = [
      Hotspot(
        latitude: 0,
        longitude: 155,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList15);
              setState(() {
                assetPath = "assets/Orange/15.webp";
                hotspotId = 15;
                stallNo = "Stall 59-64,65-70";
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
        longitude: -25,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList17);
              setState(() {
                assetPath = "assets/Orange/17.webp";
                hotspotId = 17;
                stallNo = "Stall 41-46";
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
        latitude: 5,
        longitude: 67,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList5);
              setState(() {
                assetPath = "assets/Orange/5.webp";
                hotspotId = 5;
                stallNo = "Stall 78-81,95-99";
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

    hotspot17 = [
      Hotspot(
        latitude: 5,
        longitude: 150,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList16);
              setState(() {
                assetPath = "assets/Orange/16.webp";
                hotspotId = 16;
                stallNo = "Stall 35-40";
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
              refreshImageSliders(imgList2);
              setState(() {
                assetPath = "assets/Orange/2.webp";
                hotspotId = 2;
                stallNo = "Stall 17-22,23-27";
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
        latitude: 5,
        longitude: 67,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList4);
              setState(() {
                assetPath = "assets/Orange/4.webp";
                hotspotId = 4;
                stallNo = "Stall 54-57,71-75";
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
                                                                              : hotspotId == 16
                                                                                  ? hotspot16
                                                                                  : hotspot17,
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
