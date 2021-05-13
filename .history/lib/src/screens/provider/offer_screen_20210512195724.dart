import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:offers_station/src/helper/navigator.dart';
import '../../helper/mediaQuery.dart';

class OfferScreen extends StatefulWidget {
  @override
  _OfferScreenState createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  List<String> imgs = [
    'assets/images/pizza.jpg',
    'assets/images/burger.jpg',
    'assets/images/noodles.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
            'العرض',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          color: Theme.of(context).primaryColor,
          onPressed: () {
            N.back();
          },
        ),
      ),
      body: Column(
        children: [
          Stack(
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
                          CircleAvatar(
                            radius: 15,
                            backgroundColor: Theme.of(context).primaryColor,
                            child: Icon(
                              Icons.share_outlined,
                              color: Colors.white,
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: ListTile(
              title: Text(
                '3 قطع بثمن قطعتين',
                textDirection: TextDirection.rtl,
              ),
              subtitle: Text('مع مشروبات غازية ومياه معدنية'),
              trailing: Row(children: [
                Text('إبلاغ',style: TextStyle(color: Colors.black,),),
              ],),
            ),
          ),
        ],
      ),
    );
  }
}
