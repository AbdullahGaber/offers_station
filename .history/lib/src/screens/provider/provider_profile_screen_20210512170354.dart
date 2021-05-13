import 'package:flutter/material.dart';
import '../../helper/mediaQuery.dart';

class ProviderProfileScreen extends StatefulWidget {
  @override
  _ProviderProfileScreenState createState() => _ProviderProfileScreenState();
}

class _ProviderProfileScreenState extends State<ProviderProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          color: Theme.of(context).primaryColor,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 10,
            ),
            child: Row(
              children: [
                Container(
                  width: context.width * 0.6,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '4.52 كم',
                              style: TextStyle(
                                color: Colors.black54,
                              ),
                            ),
                            Text(
                              'اسم مزود الخدمة',
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'وصف بسيط لمزود الخدمة',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          ImageIcon(
                            AssetImage(''),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  width: context.width * 0.22,
                  height: context.height * 0.14,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(9),
                    child: Image.asset(
                      'assets/images/pizza.jpg',
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
