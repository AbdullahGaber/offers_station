import 'package:flutter/material.dart';
import 'package:offers_station/src/helper/navigator.dart';
import 'package:offers_station/src/widgets/advertisement_widget.dart';

class MyOffersScreen extends StatefulWidget {
  final bool isProvider;
  MyOffersScreen({
    this.isProvider = false,
  });
  @override
  _MyOffersScreenState createState() => _MyOffersScreenState();
}

class _MyOffersScreenState extends State<MyOffersScreen> {
  Future<bool> onBackPressed()async{

  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: ,
          child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Align(
            alignment: Alignment.centerRight,
            child: Text(
              'عروضي',
              style: TextStyle(color: Colors.black),
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Theme.of(context).primaryColor,
            ),
            onPressed: () {
              // TODO : Navigate to home screen
    
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              AdvertisementWidget(),
              AdvertisementWidget(),
              AdvertisementWidget(),
              AdvertisementWidget(),
              AdvertisementWidget(),
              AdvertisementWidget(),
              AdvertisementWidget(),
              AdvertisementWidget(),
              AdvertisementWidget(),
              AdvertisementWidget(),
              AdvertisementWidget(),
            ],
          ),
        ),
      ),
    );
  }
}