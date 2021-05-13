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
    return Scaffold(
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(9),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: Carousel(
                dotBgColor: Colors.transparent,
                dotColor: Theme.of(context).primaryColor,
                images: imgs
                    .map((e) => Image.asset(
                          e,
                          fit: BoxFit.fill,
                        ))
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
