import 'package:flutter/material.dart';
import '../../helper/mediaQuery.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              title: Text('حسابي'),
            ),
          ),
          Positioned(
            top: -context.height * 0.42,
            left: -context.width * 0.03,
            right: -context.width * 0.03,
            child: Image.asset(
              'assets/icons/header-curve.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
