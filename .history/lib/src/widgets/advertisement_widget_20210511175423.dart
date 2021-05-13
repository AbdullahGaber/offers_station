import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AdvertisementWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Container(
      height: mediaQuery.height * 0.2,
      // width: mediaQuery.width * 0.8,
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
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
                        // height: mediaQuery.height * 0.02,
                        color: Color(0xff529B29),
                        padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                        child: Text('توصيل مجانا'),
                      ),
                    ),
                    Expanded(
                      child: Container(
padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                        child: Text('توصيل مجانا'),
                        // height: mediaQuery.height * 0.02,
                        color: Color(0xffF95A06),
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
                            padding: const EdgeInsets.symmetric(horizontal: 5),
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
                            padding: const EdgeInsets.symmetric(horizontal: 5),
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
                            padding: const EdgeInsets.symmetric(horizontal: 5),
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
    );
  }
}
