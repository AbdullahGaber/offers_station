import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import '../helper/mediaQuery.dart';

class OfferHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> imgs = [
      'assets/images/pizza.jpg',
      'assets/images/burger.jpg',
      'assets/images/noodles.jpg'
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 5,),
      child: Stack(
        alignment: Alignment.center,
        overflow: Overflow.visible,
        children: [
          Container(
            // width: context.width * 0.8,
            height: context.height * 0.25,
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
            right: context.width * 0.03,
            left: context.width * 0.03,
            top: context.height * 0.16,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: context.width * 0.6,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Card(
                        shape: CircleBorder(),
                        elevation: 8,
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Theme.of(context).primaryColor,
                          child: Icon(
                            Icons.share_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        'اسم مزود الخدمة',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  height: context.height * 0.15,
                  width: context.width * 0.25,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(9),
                    child: Image.asset(
                      imgs[0],
                      fit: BoxFit.fill,
                    ),
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
