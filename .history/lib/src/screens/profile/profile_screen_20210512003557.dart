import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:offers_station/src/screens/auth/login_screen.dart';
import 'package:offers_station/src/widgets/custom_new_dialog.dart';
import 'package:offers_station/src/widgets/profile_widget.dart';
import '../../helper/mediaQuery.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEBEBEB),
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
            bottom: -context.height * 0.12,
            left: -context.width * 0.07,
            right: -context.width * 0.07,
            child: Container(
              padding: EdgeInsets.only(top: context.height * 0.1),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/icons/footer-curve.png',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ProfileWidget(title: , icon: icon, onPressed: onPressed)
                    ListTile(
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
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
