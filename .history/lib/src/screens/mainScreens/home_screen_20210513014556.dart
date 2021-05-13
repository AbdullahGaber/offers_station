import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:offers_station/src/widgets/advertisement_widget.dart';
import 'package:offers_station/src/widgets/provider_item.dart';
import 'package:offers_station/src/widgets/search_widget.dart';

class HomeScreen extends StatefulWidget {
  final int? type;
  HomeScreen({
    this.type,
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
      body:widget. SafeArea(
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
