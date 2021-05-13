import 'package:flutter/material.dart';
import 'package:offers_station/src/widgets/advertisement_widget.dart';

import '../../widgets/provider_item.dart';

class MyFavoritesScreen extends StatefulWidget {
  @override
  _MyFavoritesScreenState createState() => _MyFavoritesScreenState();
}

class _MyFavoritesScreenState extends State<MyFavoritesScreen>
    with SingleTickerProviderStateMixin {
  TabController? controller;

  @override
  void initState() {
    controller = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Align(
            alignment: Alignment.centerRight,
            child: Text(
              'مفضلاتي',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          bottom: TabBar(
            controller: controller,
            indicator: BoxDecoration(
              border: Border.all(color: Colors.transparent),
            ),
            tabs: [
              Text('العروض'),
              Text('المتاجر'),
            ],
            labelColor: Theme.of(context).primaryColor,
            unselectedLabelColor: Color(0xff949CAA),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
        body: TabBarView(
          controller: controller,
          children: [
            ListView.builder(
              itemCount: 4,
              itemBuilder: (ctx, i) => AdvertisementWidget(),
            ),
            ListView.builder(
              itemCount: 4,
              itemBuilder: (ctx, i) => ProviderItem(),
            ),
          ],
        ));
  }
}
