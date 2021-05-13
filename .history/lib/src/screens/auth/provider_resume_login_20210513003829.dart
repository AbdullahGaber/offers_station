import 'package:flutter/material.dart';

class ProviderResumeLogin extends StatefulWidget {
  @override
  _ProviderResumeLoginState createState() => _ProviderResumeLoginState();
}

class _ProviderResumeLoginState extends State<ProviderResumeLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       leading: IconButton(icon: Icon(Icons.arrow_back_ios,),color: Theme.of(context).primaryColor,onPressed: (){N.},),
      ),
    );
  }
}
