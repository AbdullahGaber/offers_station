import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class CoverageScreen extends StatefulWidget {
  @override
  _CoverageScreenState createState() => _CoverageScreenState();
}

class _CoverageScreenState extends State<CoverageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(9),
            child: Carousel(
              dotBgColor: ,
            ),
          ),
        ],
      ),
    );
  }
}
