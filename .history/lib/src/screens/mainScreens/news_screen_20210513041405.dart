import 'package:flutter/material.dart';
import 'package:offers_station/src/widgets/news_widget.dart';

class NewsScreen extends StatefulWidget {
  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
    Future<bool> onBackPressed() async {
   
      N.replaceAll(
        TabScreen(),
      );
    return true;
  }
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
            'أخبار',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () {
            // TODO : Navigate to home screen

          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            NewsWidget(),
            NewsWidget(),
            NewsWidget(),
            NewsWidget(),
            NewsWidget(),
            NewsWidget(),
            NewsWidget(),
            NewsWidget(),
            NewsWidget(),
          ],
        ),
      ),
    );
  }
}
