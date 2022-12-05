import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:panorama/panorama.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'dart:async';
import 'package:carousel_slider/carousel_slider.dart';

List<String> imgList1 = [
  'assets/Gallery/Pink/113.png',
  'assets/Gallery/Pink/138.jpg',
];

List<String> imgList2 = [
  'assets/Gallery/Pink/1.jpg',
  'assets/Gallery/Pink/2-3.jpg',
  'assets/Gallery/Pink/28.jpg',
  'assets/Gallery/Pink/29-32.jpg',
  'assets/Gallery/Pink/33.jpg',
];

List<String> imgList3 = [
  'assets/Gallery/Pink/12-13.jpg',
  'assets/Gallery/Pink/34-35.jpg',
  'assets/Gallery/Pink/36-37.jpg',
  'assets/Gallery/Pink/38-39.jpg',
];

List<String> imgList4 = [
  'assets/Gallery/Pink/14.jpg',
  'assets/Gallery/Pink/15.jpg',
  'assets/Gallery/Pink/20-21.png',
];

List<String> imgList5 = [
  'assets/Gallery/Pink/12-13.jpg',
  'assets/Gallery/Pink/14.jpg',
  'assets/Gallery/Pink/15.jpg',
  'assets/Gallery/Pink/20-21.png',
  'assets/Gallery/Pink/22-23.png',
];

List<String> imgList6 = [
  'assets/Gallery/Pink/69-70.png',
  'assets/Gallery/Pink/95-96_71.jpg',
  'assets/Gallery/Pink/73.png',
];

List<String> imgList7 = [
  'assets/Gallery/Pink/67-68.png',
  'assets/Gallery/Pink/73.png',
  'assets/Gallery/Pink/88.png',
];

List<String> imgList8 = [
  'assets/Gallery/Pink/82-84.jpg',
  'assets/Gallery/Pink/62_89.png',
];

List<String> imgList9 = [
  'assets/Gallery/Pink/57_81.jpg',
];

List<String> imgList10 = [
  'assets/Gallery/Pink/129.png',
  'assets/Gallery/Pink/124-125.png',
  'assets/Gallery/Pink/104-105_46.png',
  'assets/Gallery/Pink/100-103.png',
];

List<String> imgList11 = [
  'assets/Gallery/Pink/134.png',
  'assets/Gallery/Pink/130-131.png',
];

List<String> imgList12 = [
  'assets/Gallery/Pink/138.jpg',
  'assets/Gallery/Pink/113.png',
];

List<String> imgList13 = [
  'assets/Gallery/Pink/148.png',
  'assets/Gallery/Pink/143-144.png',
];

List<String> imgList14 = [
  'assets/Gallery/Pink/124-125.png',
];

List<String> imgList15 = [
  'assets/Gallery/Pink/165.png',
  'assets/Gallery/Pink/162-163.png',
  'assets/Gallery/Pink/160-161_185-187.png',
  'assets/Gallery/Pink/158-159.jpg',
  'assets/Gallery/Pink/157.jpg',
];

List<String> imgList16 = [
  'assets/Gallery/Pink/168.jpg',
];

List<String> imgList17 = [
  'assets/Gallery/Pink/104-105_46.png',
  'assets/Gallery/Pink/22-23.png',
  'assets/Gallery/Pink/20-21.png',
  'assets/Gallery/Pink/15.jpg',
  'assets/Gallery/Pink/14.jpg',
  'assets/Gallery/Pink/12-13.jpg',
];

List<String> imgList18 = [
  'assets/Gallery/Pink/104-105_46.png',
  'assets/Gallery/Pink/22-23.png',
  'assets/Gallery/Pink/20-21.png',
  'assets/Gallery/Pink/15.jpg',
  'assets/Gallery/Pink/14.jpg',
  'assets/Gallery/Pink/12-13.jpg',
];

List<String> imgList19 = [
  'assets/Gallery/Pink/104-105_46.png',
  'assets/Gallery/Pink/22-23.png',
  'assets/Gallery/Pink/20-21.png',
  'assets/Gallery/Pink/15.jpg',
  'assets/Gallery/Pink/14.jpg',
  'assets/Gallery/Pink/12-13.jpg',
];

List<String> imgList20 = [
  'assets/Gallery/Pink/193-195.jpg',
  'assets/Gallery/Pink/188-190.jpg',
];

List<String> imgList21 = [
  'assets/Gallery/Pink/193-195.jpg',
];

List<String> imgList22 = [
  'assets/Gallery/Pink/104-105_46.png',
  'assets/Gallery/Pink/22-23.png',
  'assets/Gallery/Pink/20-21.png',
  'assets/Gallery/Pink/15.jpg',
  'assets/Gallery/Pink/14.jpg',
  'assets/Gallery/Pink/12-13.jpg',
];

List<String> imgList = [];

class PinkThreeDMap extends StatefulWidget {
  const PinkThreeDMap({Key? key}) : super(key: key);

  @override
  State<PinkThreeDMap> createState() => _PinkThreeDMapState();
}

class _PinkThreeDMapState extends State<PinkThreeDMap> {
  // double _lon = 0;
  // double _lat = 0;

  String assetPath = "assets/Pink/1.webp";
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
  List<Hotspot> hotspot17 = [];
  List<Hotspot> hotspot18 = [];
  List<Hotspot> hotspot19 = [];
  List<Hotspot> hotspot20 = [];
  List<Hotspot> hotspot21 = [];
  List<Hotspot> hotspot22 = [];

  int hotspotId = 1;

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

  // dynamic onViewChanged(longitude, latitude, tilt) {
  //   setState(() {
  //     _lon = longitude;
  //     _lat = latitude;
  //   });
  // }

  @override
  void initState() {
    refreshImageSliders(imgList1);
    resetCache();
    hotspot1 = [
      Hotspot(
        latitude: 7,
        longitude: -28,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList2);
              setState(() {
                assetPath = "assets/Pink/2.webp";
                hotspotId = 2;
                stallNo = "Stall 1-7,28-33";
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
        latitude: 6,
        longitude: -9,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList12);
              setState(() {
                assetPath = "assets/Pink/12.webp";
                hotspotId = 12;
                stallNo = "Stall 111-116,136-140";
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
        latitude: 6,
        longitude: 13,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList13);
              setState(() {
                assetPath = "assets/Pink/13.webp";
                hotspotId = 13;
                stallNo = "Stall 117-121,141-150";
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
        latitude: 5.5,
        longitude: 30,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList22);
              setState(() {
                assetPath = "assets/Pink/22.webp";
                hotspotId = 22;
                stallNo = "Stall 12-27,46-51";
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
        latitude: 5,
        longitude: 120,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList1);
              setState(() {
                assetPath = "assets/Pink/1.webp";
                hotspotId = 1;
                stallNo = "Entrance";
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
        longitude: -1,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList3);
              setState(() {
                assetPath = "assets/Pink/3.webp";
                hotspotId = 3;
                stallNo = "Stall 8-13,34-39";
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
        longitude: 80,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList12);
              setState(() {
                assetPath = "assets/Pink/12.webp";
                hotspotId = 12;
                stallNo = "Stall 111-116,136-140";
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
        latitude: 5,
        longitude: -90,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList2);
              setState(() {
                assetPath = "assets/Pink/2.webp";
                hotspotId = 2;
                stallNo = "Stall 1-7,28-33";
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
        longitude: 87,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList4);
              setState(() {
                assetPath = "assets/Pink/4.webp";
                hotspotId = 4;
                stallNo = "Stall 14-20,40-45";
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
        latitude: 5,
        longitude: 95,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList3);
              setState(() {
                assetPath = "assets/Pink/3.webp";
                hotspotId = 3;
                stallNo = "Stall 8-13,34-39";
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
        longitude: -86,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList5);
              setState(() {
                assetPath = "assets/Pink/5.webp";
                hotspotId = 5;
                stallNo = "Stall 12-27,46-51";
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
        latitude: 5,
        longitude: -72,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList6);
              setState(() {
                assetPath = "assets/Pink/6.webp";
                hotspotId = 6;
                stallNo = "Stall 70-75,94-99";
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
        longitude: 97,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList4);
              setState(() {
                assetPath = "assets/Pink/4.webp";
                hotspotId = 4;
                stallNo = "Stall 14-20,40-45";
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
        latitude: 5,
        longitude: -93,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList7);
              setState(() {
                assetPath = "assets/Pink/7.webp";
                hotspotId = 7;
                stallNo = "Stall 64-69,88-93";
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
        longitude: 86,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList5);
              setState(() {
                assetPath = "assets/Pink/5.webp";
                hotspotId = 5;
                stallNo = "Stall 12-27,46-51";
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
        latitude: 5,
        longitude: 83,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList6);
              setState(() {
                assetPath = "assets/Pink/6.webp";
                hotspotId = 6;
                stallNo = "Stall 70-75,94-99";
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
        longitude: -2,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList8);
              setState(() {
                assetPath = "assets/Pink/8.webp";
                hotspotId = 8;
                stallNo = "Stall 82-87,58-63";
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
        latitude: 6,
        longitude: 88,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList7);
              setState(() {
                assetPath = "assets/Pink/7.jpg";
                hotspotId = 7;
                stallNo = "Stall 64-69,88-93";
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
        longitude: -1,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList9);
              setState(() {
                assetPath = "assets/Pink/9.webp";
                hotspotId = 9;
                stallNo = "Stall 76-81,52-57";
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
        longitude: -87,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList17);
              setState(() {
                assetPath = "assets/Pink/17.jpg";
                hotspotId = 17;
                stallNo = "Stall 12-27,46-51";
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
        latitude: 10,
        longitude: 0,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList10);
              setState(() {
                assetPath = "assets/Pink/10.webp";
                hotspotId = 10;
                stallNo = "Stall 100-105,124-129";
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
        longitude: 164,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList8);
              setState(() {
                assetPath = "assets/Pink/8.webp";
                hotspotId = 8;
                stallNo = "Stall 82-87,58-63";
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
        latitude: 5,
        longitude: -1,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList11);
              setState(() {
                assetPath = "assets/Pink/11.webp";
                hotspotId = 11;
                stallNo = "Stall 106-110,130-135";
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
        longitude: 175,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList9);
              setState(() {
                assetPath = "assets/Pink/9.webp";
                hotspotId = 9;
                stallNo = "Stall 76-81,52-57";
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
        latitude: 5,
        longitude: 90,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList12);
              setState(() {
                assetPath = "assets/Pink/12.webp";
                hotspotId = 12;
                stallNo = "Stall 111-116,136-140";
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
        longitude: -86,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList10);
              setState(() {
                assetPath = "assets/Pink/10.webp";
                hotspotId = 10;
                stallNo = "Stall 100-105,124-129";
              });
            },
            icon: const Icon(
              FontAwesomeIcons.solidCircle,
              color: Colors.white,
              size: 30,
            ),
          ),
        ),
      )
    ];

    hotspot12 = [
      Hotspot(
        latitude: 5,
        longitude: -3,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList11);
              setState(() {
                assetPath = "assets/Pink/11.webp";
                hotspotId = 11;
                stallNo = "Stall 106-110,130-135";
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
        longitude: -70,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList2);
              setState(() {
                assetPath = "assets/Pink/2.webp";
                hotspotId = 2;
                stallNo = "Stall 1-7,28-33";
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
        longitude: 50,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList13);
              setState(() {
                assetPath = "assets/Pink/13.webp";
                hotspotId = 13;
                stallNo = "Stall 117-121,141-150";
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
        longitude: 80,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList22);
              setState(() {
                assetPath = "assets/Pink/22.webp";
                hotspotId = 22;
                stallNo = "Stall 12-27,46-51";
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
        longitude: 145,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList1);
              setState(() {
                assetPath = "assets/Pink/1.webp";
                hotspotId = 1;
                stallNo = "Entrance";
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
        longitude: -153,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList1);
              setState(() {
                assetPath = "assets/Pink/1.webp";
                hotspotId = 1;
                stallNo = "Entrance";
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
        longitude: -55,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList12);
              setState(() {
                assetPath = "assets/Pink/12.webp";
                hotspotId = 12;
                stallNo = "Stall 111-116,136-140";
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
        longitude: -75,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList2);
              setState(() {
                assetPath = "assets/Pink/2.webp";
                hotspotId = 2;
                stallNo = "Stall 1-7,28-33";
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
        longitude: 0,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList14);
              setState(() {
                assetPath = "assets/Pink/14.webp";
                hotspotId = 14;
                stallNo = "Stall 122-126,151-155";
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
        longitude: 70,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList22);
              setState(() {
                assetPath = "assets/Pink/22.webp";
                hotspotId = 22;
                stallNo = "Stall 12-27,46-51";
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
        latitude: 5,
        longitude: -60,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList13);
              setState(() {
                assetPath = "assets/Pink/13.webp";
                hotspotId = 13;
                stallNo = "Stall 117-121,141-150";
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
        longitude: 95,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList15);
              setState(() {
                assetPath = "assets/Pink/15.webp";
                hotspotId = 15;
                stallNo = "Stall 156-160,161-165";
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
        latitude: 5,
        longitude: 0,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList16);
              setState(() {
                assetPath = "assets/Pink/16.webp";
                hotspotId = 16;
                stallNo = "Stall 166-170,171-175";
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
        longitude: -177,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList14);
              setState(() {
                assetPath = "assets/Pink/14.webp";
                hotspotId = 14;
                stallNo = "Stall 122-126,151-155";
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
        latitude: 5,
        longitude: -3,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList17);
              setState(() {
                assetPath = "assets/Pink/17.jpg";
                hotspotId = 17;
                stallNo = "Stall 12-27,46-51";
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
        latitude: 8,
        longitude: 173,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList15);
              setState(() {
                assetPath = "assets/Pink/15.webp";
                hotspotId = 15;
                stallNo = "Stall 156-160,161-165";
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
        longitude: 80,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList8);
              setState(() {
                assetPath = "assets/Pink/8.webp";
                hotspotId = 8;
                stallNo = "Stall 82-87,58-63";
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
        longitude: -2,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList16);
              setState(() {
                assetPath = "assets/Pink/16.webp";
                hotspotId = 16;
                stallNo = "Stall 166-170,171-175";
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
        longitude: -93,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList18);
              setState(() {
                assetPath = "assets/Pink/18.webp";
                hotspotId = 18;
                stallNo = "Stall 12-27,46-51";
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

    hotspot18 = [
      Hotspot(
        latitude: 5,
        longitude: 0,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList19);
              setState(() {
                assetPath = "assets/Pink/19.webp";
                hotspotId = 19;
                stallNo = "Stall 12-27,46-51";
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
        longitude: 92,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList17);
              setState(() {
                assetPath = "assets/Pink/17.jpg";
                hotspotId = 17;
                stallNo = "Stall 17";
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

    hotspot19 = [
      Hotspot(
        latitude: 5,
        longitude: -2.2,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList20);
              setState(() {
                assetPath = "assets/Pink/20.webp";
                hotspotId = 20;
                stallNo = "Stall 186-190,191-195";
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
        longitude: 178,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList18);
              setState(() {
                assetPath = "assets/Pink/18.webp";
                hotspotId = 18;
                stallNo = "Stall 12-27,46-51";
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

    hotspot20 = [
      Hotspot(
        latitude: 5,
        longitude: 0,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList21);
              setState(() {
                assetPath = "assets/Pink/21.webp";
                hotspotId = 21;
                stallNo = "Stall 195-209";
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
        longitude: -172,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList19);
              setState(() {
                assetPath = "assets/Pink/19.webp";
                hotspotId = 19;
                stallNo = "Stall 12-27,46-51";
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

    hotspot21 = [
      Hotspot(
        latitude: 5,
        longitude: 0,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList22);
              setState(() {
                assetPath = "assets/Pink/22.webp";
                hotspotId = 22;
                stallNo = "Stall 12-27,46-51";
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
        longitude: -179,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList20);
              setState(() {
                assetPath = "assets/Pink/20.webp";
                hotspotId = 20;
                stallNo = "Stall 186-190,191-195";
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

    hotspot22 = [
      Hotspot(
        latitude: 5,
        longitude: 91,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList21);
              setState(() {
                assetPath = "assets/Pink/21.webp";
                hotspotId = 21;
                stallNo = "Stall 195-209";
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
        longitude: 0,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList13);
              setState(() {
                assetPath = "assets/Pink/13.webp";
                hotspotId = 13;
                stallNo = "Stall 117-121,141-150";
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
        longitude: -28,
        width: 60.0,
        height: 60.0,
        widget: AvatarGlow(
          endRadius: 100.0,
          duration: const Duration(milliseconds: 1000),
          child: IconButton(
            onPressed: () {
              refreshImageSliders(imgList1);
              setState(() {
                assetPath = "assets/Pink/1.webp";
                hotspotId = 1;
                stallNo = "Entrance";
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
                  // onViewChanged: onViewChanged,
                  sensitivity: 2.0,
                  minLatitude: 5,
                  maxLatitude: 10,
                  minLongitude: -180,
                  maxLongitude: 180,
                  croppedArea: const Rect.fromLTWH(0, 0.2, 1, 0.5),
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
                                                                                  : hotspotId == 17
                                                                                      ? hotspot17
                                                                                      : hotspotId == 18
                                                                                          ? hotspot18
                                                                                          : hotspotId == 19
                                                                                              ? hotspot19
                                                                                              : hotspotId == 20
                                                                                                  ? hotspot20
                                                                                                  : hotspotId == 21
                                                                                                      ? hotspot21
                                                                                                      : hotspot22,
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
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(vertical: 5),
                    //   child: Row(
                    //     children: [
                    //       Text(
                    //         "lon: " + _lon.toString(),
                    //         style: GoogleFonts.montserrat(
                    //           color: Colors.white,
                    //           fontWeight: FontWeight.bold,
                    //           fontSize: 13,
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                    // Text(
                    //   "lat: " + _lat.toString(),
                    //   style: GoogleFonts.montserrat(
                    //     color: Colors.white,
                    //     fontWeight: FontWeight.bold,
                    //     fontSize: 13,
                    //   ),
                    // ),
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
