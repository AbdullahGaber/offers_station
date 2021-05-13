import 'package:flutter/material.dart';

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
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(9),
              topRight: Radius.circular(9),
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/images/pizza.jpg',
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: mediaQuery.height * 0.02,
                        color: Colors.green,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: mediaQuery.height * 0.02,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          '4.3 كم',
                        ),

                      ],
                      
                    ),
                    Expanded(
                      child: Container(
                        height: mediaQuery.height * 0.02,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
