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
      body:widget.type==0?   backgroundColor: Color(0xffEBEBEB),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: -context.height * 0.42,
            left: -context.width * 0.03,
            right: -context.width * 0.03,
            child: Image.asset(
              'assets/icons/header-curve.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              centerTitle: true,
              title: Text(
                'حسابي',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            top: context.height * 0.18,
            left: 0,
            right: 0,
            child: Card(
              shape: CircleBorder(),
              elevation: 8,
              child: CircleAvatar(
                // child: Image.asset('assets/images/profile.png'),
                backgroundImage: AssetImage(
                  'assets/images/burger.jpg',
                ),
                radius: 45,
              ),
            ),
          ),
          Positioned(
            top: context.height * 0.35,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  'هلال أحمد علي',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: -context.height * 0.05,
            left: -context.width * 0.07,
            right: -context.width * 0.08,
            child: Container(
              padding: EdgeInsets.only(
                left: 30,
                right: 30,
                top: context.height * 0.16,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icons/footer-curve.png',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              height: context.height * 0.63,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ProfileWidget(
                      title: 'تعديل البيانات',
                      icon: Icons.person,
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (c) => EditProfileScreen(),
                          ),
                        );
                      },
                    ),
                    ProfileWidget(
                      title: 'قائمة التنبيهات',
                      imageIcon: 'assets/icons/notifications.png',
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (c) => NotificationPage(),
                          ),
                        );
                      },
                    ),
                    ProfileWidget(
                      title: 'المفضلة',
                      icon: Icons.favorite_border,
                      onPressed: () {},
                    ),
                    ProfileWidget(
                      title: 'تواصل معنا',
                      imageIcon: 'assets/icons/phone.png',
                      onPressed: () {},
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: ListTile(
                        onTap: () {
                          CustomDialog().showOptionDialog(
                            context: context,
                            msg: 'هل ترغب بتسجيل الخروج',
                            cancelFun: () {
                              return;
                            },
                            okFun: () {
                              Fluttertoast.showToast(
                                  msg: 'تم تسجيل الخروج بنجاح');
                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                    builder: (c) => LoginScreen(
                                        // type: widget.type,
                                        ),
                                  ),
                                  (route) => false);
                            },
                            okMsg: 'نعم',
                            cancelMsg: 'لا',
                          );
                        },
                        leading: ImageIcon(
                          AssetImage('assets/icons/logout.png'),
                          color: Theme.of(context).primaryColor,
                        ),
                        title: Text(
                          'تسجيل الخروج',
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ): SafeArea(
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
