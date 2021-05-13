import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:offers_station/src/widgets/advertisement_widget.dart';
import 'package:offers_station/src/widgets/provider_item.dart';
import 'package:offers_station/src/widgets/search_widget.dart';
import '../../helper/mediaQuery.dart';

class HomeScreen extends StatefulWidget {
  final int? type;
  HomeScreen({
    this.type = 1,
  });
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> imgs = [
    'assets/images/pizza.jpg',
    'assets/images/burger.jpg',
    'assets/images/noodles.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      // backgroundColor: widget.type == 1 ? Color(0xffEBEBEB) : Colors.white,
      body: widget.type == 1
          ? Stack(
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
                    shape: CircleBorder(),
                    elevation: 8,
                    child: CircleAvatar(
                      // child: Image.asset('assets/images/profile.png'),
                      backgroundImage: AssetImage(
                        'assets/images/burger.jpg',
                      ),
                      radius: 45,
                    ),
                  ),
                ),
                Positioned(
                  top: context.height * 0.35,
                  left: 0,
                  right: 0,
                  child: Column(
                    children: [
                      Text(
                        'مرحبا بك',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          // fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'هلال أحمد علي',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: -context.width * 0.07,
                  right: -context.width * 0.08,
                  child: Container(
                    padding: EdgeInsets.only(
                      left: 30,
                      right: 30,
                      top: context.height * 0.16,
                    ),
                    height: context.height * 0.63,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          : SafeArea(
              child: Column(
                children: [
                  SearchWidget(
                    hintText: 'أدخل كلمة البحث',
                    suffixIcon: Icon(
                      Icons.search,
                      color: Color(0xffF13F04),
                    ),
                  ),
                  Container(
                    width: mediaQuery.width,
                    height: mediaQuery.height * 0.3,
                    child: Carousel(
                      dotBgColor: Colors.transparent,
                      dotIncreasedColor: Color(0xffF13F04),
                      images: imgs
                          .map((e) => Image.asset(
                                e,
                                fit: BoxFit.fill,
                              ))
                          .toList(),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                        itemCount: 7, itemBuilder: (c, i) => ProviderItem()),
                  )
                ],
              ),
            ),
    );
  }
}
