import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class CoverageWidget extends StatelessWidget {
  final List<String> imgs;
  final Function onTap;
  CoverageWidget({@required this.imgs,@required this.onTap});
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return InkWell(
      onTap: ,
          child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            width: mediaQuery.width * 0.8,
            height: mediaQuery.height * 0.2,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(9),
              child: Carousel(
                dotSize: 5,
                dotBgColor: Colors.transparent,
                dotIncreasedColor: Theme.of(context).primaryColor,
                images: imgs
                    .map((e) => Image.asset(
                          e,
                          fit: BoxFit.fill,
                        ))
                    .toList(),
              ),
            ),
          ),
          Positioned(
            top: mediaQuery.height * 0.05,
            child: ImageIcon(
              AssetImage(
                'assets/icons/youtube.png',
              ),
              color: Colors.white,
              size: mediaQuery.height * 0.11,
            ),
          ),
        ],
      ),
    );
  }
}
