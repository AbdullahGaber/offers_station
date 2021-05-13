import 'package:flutter/material.dart';

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
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
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
        body: ListView.builder(
          itemCount: 4,
          itemBuilder: (ctx, i) => ProviderItem(),
        ),
      ),
    );
  }
}
