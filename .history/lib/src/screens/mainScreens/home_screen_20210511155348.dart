import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:offers_station/src/widgets/search_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
SearchWidget
        ],
      ),
    );
  }
}
