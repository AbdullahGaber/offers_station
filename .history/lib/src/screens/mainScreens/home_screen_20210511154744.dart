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
          Container(
            height: mediaQuery.height * 0.1,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(9),
                topRight: Radius.circular(9),
              ),
              child: GridTile(
                child: Image.asset(
                  'assets/images/pizza.jpg',
                  fit: BoxFit.fill,
                ),
                footer: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '4.3 كم',
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: SvgPicture.asset(
                                    'assets/icons/pin.svg',
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'مجانا',
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: SvgPicture.asset(
                                    'assets/icons/delivery-man.svg',
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  '45 دقيقة',
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  child: SvgPicture.asset(
                                    'assets/icons/clock.svg',
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // ClipRRect(
          //   borderRadius: BorderRadius.only(
          //     topLeft: Radius.circular(9),
          //     topRight: Radius.circular(9),
          //   ),
          //   child: Column(
          //     children: [
          //       Image.asset(
          //         'assets/images/pizza.jpg',
          //       ),
          //       Row(
          //         children: [
          //           Expanded(
          //             child: Container(
          //               height: mediaQuery.height * 0.02,
          //               color: Colors.green,
          //             ),
          //           ),
          //           Expanded(
          //             child: Container(
          //               height: mediaQuery.height * 0.02,
          //               color: Colors.orange,
          //             ),
          //           ),
          //         ],
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.symmetric(horizontal: 5),
          //         child: Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [
          //             Row(
          //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //               children: [
          //                 Text(
          //                   '4.3 كم',
          //                 ),
          //                 Padding(
          //                   padding: const EdgeInsets.symmetric(horizontal: 5),
          //                   child: SvgPicture.asset(
          //                     'assets/icons/pin.svg',
          //                     color: Colors.black,
          //                   ),
          //                 ),
          //               ],
          //             ),
          //             Row(
          //               children: [
          //                 Text(
          //                   'مجانا',
          //                 ),
          //                 Padding(
          //                   padding: const EdgeInsets.symmetric(horizontal: 5),
          //                   child: SvgPicture.asset(
          //                     'assets/icons/delivery-man.svg',
          //                     color: Colors.black,
          //                   ),
          //                 )
          //               ],
          //             ),
          //             Row(
          //               children: [
          //                 Text(
          //                   '45 دقيقة',
          //                 ),
          //                 Padding(
          //                   padding: const EdgeInsets.symmetric(horizontal: 5),
          //                   child: SvgPicture.asset(
          //                     'assets/icons/clock.svg',
          //                     color: Colors.black,
          //                   ),
          //                 )
          //               ],
          //             ),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
