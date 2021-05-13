import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:offers_station/src/widgets/search_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          SearchWidget(),
          Container(
            width: mediaQuery.width,
            height: mediaQuery.height * 0.3,
            child: Carousel(
              dotColor: Color(0xffF13F04),
              dot
              images: imgs
                  .map((e) => Image.asset(
                        e,
                        fit: BoxFit.fill,
                      ))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
