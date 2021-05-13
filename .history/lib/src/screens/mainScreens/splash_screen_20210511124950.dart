import 'dart:async';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:t3myrkm/src/screens/tab_screen.dart';
// import '../../../src/helper/firebaseNotifications.dart';
// import '../../screens/auth/login_screen.dart';
import 'package:shimmer/shimmer.dart';
// import '../../logic/providers/general/shared_preferences_provider.dart';

class Splash extends StatefulWidget {
  final bool isLoggedIn;

  final GlobalKey<NavigatorState> navigator;
  final SharedPreferences prefs;
  const Splash({
    Key key,
    this.navigator,
    this.isLoggedIn = false,
    this.prefs,
  }) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  bool isInit = true;
  Future<Timer> _loadData() async {
    return Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            // builder: (c) => LoginScreen(),

            // builder: (ctx) => widget.isLoggedIn
            //     ? TabScreen(
            //         type: widget.prefs.get('type') == 'عميل' ? 0 : 1,
            //       )
            //     : LoginScreen(),
            ),
      );
    });
  }

  @override
  void initState() {
    _loadData();
    Future.delayed(Duration(microseconds: 1), () async {
      // var data = Provider.of<SharedPreferencesProvider>(context, listen: false);
      // await data.getInstance();
      // FirebaseDynamicLinks.instance
      //     .getDynamicLink(Uri.parse(Platform.isIOS
      //         ? 'https://t3myrkm.page.link/XktS'
      //         : 'https://t3myrkm.page.link/TG78'))
      //     .then((value) {
      //   print('done');
      //   if (value != null) {
      //     // data.prefs
      //     //     .setString(
      //     //       'shared_link',
      //     //       value.link.toString(),
      //     //     )
      //     //     .then((value) => print('li'));
      //   }
      // });
    });
    // FirebaseNotifications().setUpFirebase(widget.navigator, context);

    super.initState();
  }

  GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        key: _globalKey,
        body: Stack(
          children: <Widget>[
            Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height * .2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/logo.png',
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * .8),
                child: Shimmer.fromColors(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "مرحبا بكم في تطبيق Offers Station",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  baseColor: Colors.white,
                  highlightColor: Colors.transparent,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
