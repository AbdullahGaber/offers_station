import 'package:flutter/material.dart';

class MyOffersScreen extends StatefulWidget {
  @override
  _MyOffersScreenState createState() => _MyOffersScreenState();
}

class _MyOffersScreenState extends State<MyOffersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
            'عروضي',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
