import 'package:carousel_pro/carousel_pro.dart';
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
        elevation: 0,
        backgroundColor: Colors.transparent,
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
          OfferH
          SizedBox(
            height: context.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '3 قطع بسعر قطعتين',
              )
            ],
          ),
        ],
      ),
    );
  }
}
