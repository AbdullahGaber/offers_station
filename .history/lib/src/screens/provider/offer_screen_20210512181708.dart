import 'package:flutter/material.dart';
import '../../helper/mediaQuery.dart';

class OfferScreen extends StatefulWidget {
  @override
  _OfferScreenState createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Align(alignment: Alignment.centerRight,child: Text('العرض',style: TextStyle(),),),),
    );
  }
}
