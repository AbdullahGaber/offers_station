import 'package:flutter/material.dart';
import 'package:offers_station/src/helper/navigator.dart';
import '../../helper/mediaQuery.dart';

class OfferScreen extends StatefulWidget {
  @override
  _OfferScreenState createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
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
      body: Column(children: [
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
                images: imgs!
                    .map((e) => Image.asset(
                          e,
                          fit: BoxFit.fill,
                        ))
                    .toList(),
              ),
            ),
          ),
      ],),
    );
  }
}
