import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:offers_station/src/screens/mainScreens/coverage_screen.dart';
import 'package:offers_station/src/screens/mainScreens/home_screen.dart';
import 'package:offers_station/src/screens/mainScreens/my_offers_screen.dart';
import 'package:offers_station/src/screens/mainScreens/news_screen.dart';
import 'package:offers_station/src/screens/profile/profile_screen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../logic/providers/general/notifications/notifications_provider.dart';
import '../logic/providers/general/settings_provider.dart';
import '../logic/providers/general/user_by_id_provider.dart';
import '../logic/providers/provider/order/commissions_provider.dart';
import '../logic/providers/user/order/my_orders_provider.dart';
// import './mainScreens/home_screen.dart';
// import './user/orders/orders_screen.dart';
import '../widgets/search_widget.dart';
// import 'profile/profile_screen.dart';
import './Notifications/notificationPage.dart';
// import './mainScreens/search_screen.dart';
import '../logic/providers/general/shared_preferences_provider.dart';

class TabScreen extends StatefulWidget {
  final int? index;
  final int? type;

  TabScreen({
    this.index,
    this.type,
  });
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _index = 1;
  SharedPreferences? prefs;
  MyOrdersProvider? ordersProvider;
  SettingsProvider? settingsProvider;
  CommissionsProvider? commissionsProvider;
  String blockReason = '';
  List<dynamic>? pages;
  // Timer timer;
  bool isInit = true;

  void _onTap(int item) => {
        print(item),
        setState(
          () {
            _index = item;
          },
        ),
      };
  Future<bool> _onPressBackButton() async {
    if (_index != 1) {
      setState(() {
        _index = 1;
      });
      return false;
    } else {
      SystemNavigator.pop();
      return true;
    }
  }

  UserByIdProvider? userByIdProvider;
  @override
  void initState() {
    // if (widget.type == 1) {
    //   timer = Timer.periodic(Duration(minutes: 30), (timer) async {
    //     userByIdProvider =
    //         Provider.of<UserByIdProvider>(context, listen: false);
    //     prefs = Provider.of<SharedPreferencesProvider>(context, listen: false)
    //         .prefs;
    //     var user = await userByIdProvider.searchUser(userId: prefs.get('id'));
    //     if (user != null) {
    //       if (user.data.blocked != prefs.get('blocked')) {
    //         await prefs.setBool('blocked', user.data.blocked);
    //       }
    //     }
    //   });
    // }
    if (widget.index != null) {
      _index = widget.index!;
    }
    pages = [
      {
        'title': 'حسابي',
        'page': ProfileScreen(
          isProvider: widget.type == 1,
        ),
      },
      {
        'title': 'أخبار',
        'page': NewsScreen(
            // isProvider: widget.type == 1,
            ),
      },
      {
        'title': 'الرئيسية',
        'page': HomeScreen(type: widget.type),
      },
      {
        'title': 'التغطيات',
        'page': CoverageScreen(),
      },
      {
        'title': 'عروضي',
        'page': MyOffersScreen(
          isProvider: widget.type == 1,
          //  widget.type != null
          //     ? widget.type
          //     : prefs.get('type') == 'عميل'
          //         ? 0
          //         : 1,
        ),
      },
    ];
    super.initState();
  }

  // @override
  // void dispose() {
  //   timer.cancel();
  //   super.dispose();
  // }

  // @override
  // void didChangeDependencies() async {
  //   if (isInit) {
  //     ordersProvider = Provider.of<MyOrdersProvider>(context, listen: false);
  //     settingsProvider = Provider.of<SettingsProvider>(context, listen: false);
  //     commissionsProvider =
  //         Provider.of<CommissionsProvider>(context, listen: false);
  //     prefs =
  //         Provider.of<SharedPreferencesProvider>(context, listen: false).prefs;
  //     if (prefs.get('type') == 'مزود خدمة') {
  //       await ordersProvider.getMyOrders(context);
  //       await settingsProvider.getSettings(context);
  //       await commissionsProvider.getMyCommissions(context);
  //       blockReason = ordersProvider.activeOrderCount() >=
  //               settingsProvider.activeOrderCount
  //           ? 'لقد تم حظر حسابك لتجاوز حد الطلبات النشطة المسموح به, يرجى إكمال الطلبات النشطة'
  //           : commissionsProvider.unPayedCommission() >=
  //                   settingsProvider.unPaidCommission
  //               ? 'لقد تم حظر حسابك لتخطي حد العمولات الغير مدفوعة المسموح به, يرجى سداد العمولات المستحقة'
  //               : '';
  //     }
  //   }
  //   isInit = false;

  //   super.didChangeDependencies();
  // }

  @override
  Widget build(BuildContext context) {
    print(widget.type);
    var mediaQuery = MediaQuery.of(context).size;
    return WillPopScope(
      onWillPop: _onPressBackButton,
      child: Scaffold(
        // extendBodyBehindAppBar: _index == 0,
        // appBar: _index == 1
        //     ? null
        //     : AppBar(
        //         elevation: 0,
        //         backgroundColor: Colors.white,
        //         leading: _index == 1
        //             ? Stack(
        //                 alignment: Alignment.center,
        //                 children: [
        //                   IconButton(
        //                     icon: ImageIcon(color:
        //                       AssetImage(
        //                         'assets/icons/notification.png',
        //                       ),
        //                       color: Color(0xff20C3BA),
        //                     ),
        //                     onPressed: () {
        //                       Navigator.of(context).push(
        //                         MaterialPageRoute(
        //                           builder: (ctx) => NotificationPage(),
        //                         ),
        //                       );
        //                     },
        //                   ),
        //                   Positioned(
        //                     top: mediaQuery.height * 0.01,
        //                     right: mediaQuery.width * 0.03,
        //                     child: Consumer<NotificationsProvider>(
        //                       builder: (_, snap, __) => Visibility(
        //                         visible: snap.unReadNotification != 0,
        //                         child: CircleAvatar(
        //                           radius: 10,
        //                           child: Text(
        //                             '${snap.unReadNotification}',
        //                             style: TextStyle(fontSize: 13),
        //                           ),
        //                           backgroundColor: Colors.red,
        //                         ),
        //                       ),
        //                     ),
        //                   ),
        //                 ],
        //               )
        //             : IconButton(
        //                 icon: Icon(Icons.arrow_back),
        //                 onPressed: () {
        //                   setState(() {
        //                     _index = 1;
        //                   });
        //                 },
        //               ),
        //         title: Align(
        //           alignment: Alignment.centerRight,
        //           child: Text(
        //             pages[_index]['title'],
        //           ),
        //         ),
        //       ),
        body: pages![_index]['page'],
        backgroundColor: Colors.transparent,
        bottomNavigationBar: SizedBox(
          height: mediaQuery.height * 0.12,
          child: BottomNavigationBar(
            selectedFontSize: 10,
            unselectedFontSize: 10,
            iconSize: 20,
            items: [
              BottomNavigationBarItem(
                activeIcon: CircleAvatar(
                  backgroundColor: Theme.of(context).primaryColor,
                  child: ImageIcon(color:
                    AssetImage('assets/icons/profileScreen.png'),
                  ),
                ),
                label: 'حسابي',
                icon: ImageIcon(color:
                  AssetImage('assets/icons/profileScreen.png'),
                ),
              ),
              BottomNavigationBarItem(
                activeIcon: CircleAvatar(
                  backgroundColor: Theme.of(context).primaryColor,
                  child: ImageIcon(color:
                    AssetImage('assets/icons/news.png'),
                  ),
                ),
                label: 'أخبار',
                icon: ImageIcon(color:
                  AssetImage('assets/icons/news.png'),
                ),
              ),
              BottomNavigationBarItem(
                activeIcon: CircleAvatar(
                  backgroundColor: Theme.of(context).primaryColor,
                  child: ImageIcon(color:
                    AssetImage('assets/icons/home.png'),
                  ),
                ),
                label: 'الرئيسية',
                icon: ImageIcon(color:
                  AssetImage('assets/icons/home.png'),
                  // color: Colors.white,
                ),
              ),
              BottomNavigationBarItem(
                activeIcon: CircleAvatar(
                  backgroundColor: Theme.of(context).primaryColor,
                  child: ImageIcon(color:
                    AssetImage('assets/icons/coverage.png'),
                  ),
                ),
                label: 'التغطيات',
                icon: ImageIcon(color:
                  AssetImage('assets/icons/coverage.png'),
                  // color: Colors.white,
                ),
              ),
              BottomNavigationBarItem(
                activeIcon: CircleAvatar(
                  backgroundColor: Theme.of(context).primaryColor,
                  child: ImageIcon(color:
                    AssetImage('assets/icons/offers.png'),
                  ),
                ),
                label: 'عروضي',
                icon: ImageIcon(color:
                  AssetImage('assets/icons/offers.png'),
                ),
              ),
            ],
            backgroundColor: Color(0xff282828),
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            selectedLabelStyle: TextStyle(color: Colors.white),
            unselectedLabelStyle: TextStyle(color: Colors.white),
            currentIndex: _index,
            onTap: _onTap,
            showUnselectedLabels: true,
          ),
        ),
      ),
    );
  }
}
