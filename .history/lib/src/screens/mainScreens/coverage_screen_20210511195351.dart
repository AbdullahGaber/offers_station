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
      appBar: AppBar(
        title: Text(
          'التغطيات',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
