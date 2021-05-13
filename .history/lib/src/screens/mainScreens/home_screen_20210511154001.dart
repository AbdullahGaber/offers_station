import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            '4.3 كم',
                          ),
                          Icon(
                            Icons.location_on,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '4.3 كم',
                          ),
                          SvgPicture.asset(
                            'assets/icons/delivery-man.svg',
                            color: Colors.black,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '45 ',
                          ),
                          SvgPicture.asset(
                            'assets/icons/clock.svg',
                            color: Colors.black,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
