import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:offers_station/src/helper/navigator.dart';
import '../../helper/mediaQuery.dart';

class OfferScreen extends StatefulWidget {
  @override
  _OfferScreenState createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  List<String> imgs = [
    'assets/images/pizza.jpg',
    'assets/images/burger.jpg',
    'assets/images/noodles.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
            'العرض',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          color: Theme.of(context).primaryColor,
          onPressed: () {
            N.back();
          },
        ),
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              Container(
                // width: context.width * 0.8,
                height: context.height * 0.25,
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
                child: Container(
                  height: context.height * 0.17,
                  width: context.width * 0.25,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(9),
                    child: Image.asset(imgs[0]),
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
