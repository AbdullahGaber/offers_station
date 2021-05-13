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
            top: -context.height * 0.01,
            left: -context.width * 0.01,
            right: -context.w * 0.01,
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
