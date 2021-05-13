import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class CoverageScreen extends StatefulWidget {
  @override
  _CoverageScreenState createState() => _CoverageScreenState();
}

class _CoverageScreenState extends State<CoverageScreen> {
  List<String> imgs = [
    'assets/images/pizza.jpg',
    'assets/images/burger.jpg',
    'assets/images/noodles.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                width: mediaQuery.width * 0.8,
                height: mediaQuery.height * 0.2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(9),
                  child: Carousel(
                    dotSize: 5,
                    dotBgColor: Colors.transparent,
                    dotIncreasedColor: Theme.of(context).primaryColor,
                    images: imgs
                        .map((e) => Image.asset(
                              e,
                              fit: BoxFit.fill,
                            ))
                        .toList(),
                  ),
                ),
              ),
              Positioned(
                top: mediaQuery.height * 0.05,
                child: Container(
                  decoration: BoxDecoration(),
                  child: Icon(
                    Icons.play_arrow,
                    color: Colors.black,
                    size: 25,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
