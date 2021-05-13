import 'dart:developer';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:offers_station/src/helper/navigator.dart';
import 'package:offers_station/src/screens/tab_screen.dart';
import 'package:offers_station/src/widgets/custom_new_dialog.dart';
import 'package:offers_station/src/widgets/offer_header_widget.dart';
import 'package:offers_station/src/widgets/register_button.dart';
import 'package:offers_station/src/widgets/text_field_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../helper/mediaQuery.dart';

class OfferScreen extends StatefulWidget {
  final bool isProvider;
  OfferScreen({this.isProvider = false});
  @override
  _OfferScreenState createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            OfferHeaderWidget(),
            SizedBox(
              height: context.height * 0.08,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: context.width * 0.03,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Card(
                          shape: CircleBorder(),
                          elevation: 8,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Theme.of(context).primaryColor,
                            child: Text(
                              '!',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text('إبلاغ'),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '3 قطع بسعر قطعتين',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                        'مع مشروبات غازية ومياه معدنية',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          // fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.width * 0.03),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'مطاعم',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    // fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: context.height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.width * 0.03),
              child: Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'SR ',
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                          TextSpan(
                            text: '55.00',
                            style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        launch('tel:+966000000');
                      },
                      child: Text(
                        '+966000000',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: InkWell(
                        onTap: () {
                          launch('tel:+966000000');
                        },
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Color(0xff7DAC53),
                          child: Icon(
                            FontAwesomeIcons.phone,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: context.height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.width * 0.03),
              child: Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    launch('https://www.google.com');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'https://www.google.com',
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: CircleAvatar(
                          radius: 15,
                          backgroundColor: Theme.of(context).primaryColor,
                          child: Icon(
                            FontAwesomeIcons.link,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            if (!widget.isProvider) ...[
              SizedBox(
                height: context.height * 0.04,
              ),
              TextFieldWidget(
                onChanged: (v) {},
                labelText: 'كود الخصم',
                fillColor: Color(0xff949CAA),
              ),
              SizedBox(
                height: context.height * 0.04,
              ),
              RegisterButton(
                color: Theme.of(context).primaryColor,
                title: 'استخدم العرض',
                onPressed: () {
                  CustomDialog().showOptionDialog(
                    context: context,
                    msg: 'هل ترغب باستخدام العرض؟',
                    okFun: () {
                      Fluttertoast.showToast(
                        msg: 'تم ارسال إشعار الى مزود الخدمة',
                      );
                      N.to(TabScreen());
                    },
                    cancelFun: () {},
                    okMsg: 'نعم',
                    cancelMsg: 'لا',
                  );
                  log('message');
                },
              ),
            ],
          ],
        ),
      ),
    );
  }
}
