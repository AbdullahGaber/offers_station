import 'dart:html';

import 'package:flutter/material.dart';
import 'package:offers_station/src/helper/navigator.dart';

class ProviderResumeLogin extends StatefulWidget {
  @override
  _ProviderResumeLoginState createState() => _ProviderResumeLoginState();
}

class _ProviderResumeLoginState extends State<ProviderResumeLogin> {
    File? logoImage;
  File? insuranceImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: ,
    );
  }
}
