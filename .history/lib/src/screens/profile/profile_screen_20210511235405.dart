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
            top: -context.height * 0.42,
            left: -context.width * 0.03,
            right: -context.width * 0.03,
            child: Image.asset(
              'assets/icons/header-curve.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              centerTitle: true,
              title: Text(
                'حسابي',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            top: context.height * 0.18,
            left: 0,
            right: 0,
            child: Card(
              color: Colors.transparent,
              shape: CircleBorder(),
              elevation: 8,
              child: CircleAvatar(
                child: Image.asset(name),
                backgroundImage: AssetImage(
                  'assets/images/profile.png',
                ),
                radius: 45,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
