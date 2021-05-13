import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:offers_station/src/widgets/advertisement_widget.dart';
import 'package:offers_station/src/widgets/search_widget.dart';

class HomeScreen extends StatefulWidget {
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
      body: SafeArea(
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
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: mediaQuery.width * 0.5,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'اسم مزود الخدمة',
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            '1.5 كم',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: mediaQuery.height * 0.15,
                    width: mediaQuery.width * 0.2,
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
            // Expanded(
            //   child: ListView.builder(
            //       itemCount: 7, itemBuilder: (c, i) => AdvertisementWidget()),
            // )
          ],
        ),
      ),
    );
  }
}
