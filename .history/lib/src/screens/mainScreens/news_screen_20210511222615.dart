import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  Widget build(BuildContext context) {
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
        
      ),
      body: Column(
        children: [
          Row(
            children: [],
          ),
        ],
      ),
    );
  }
}