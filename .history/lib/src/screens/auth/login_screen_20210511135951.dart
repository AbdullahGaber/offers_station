// import 'package:country_code_picker/country_code_picker.dart';
// import 'package:fahs/src/screens/mainScreens/home_screen.dart';
// import 'package:fahs/src/screens/tab_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../logic/providers/auth/login_provider.dart';
import '../../logic/providers/auth/signup_provider.dart';
// import '../mainScreens/home_screen.dart';
import './choose_register_type_screen.dart';
import './mobile_register_screen.dart';
import '../../widgets/text_field_widget.dart';
import '../../widgets/register_button.dart';
import 'mobile_register_screen.dart';

class LoginScreen extends StatefulWidget {
  final int type;
  LoginScreen({
    this.type,
  });
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool secureText = true;
  String code = '966';
  int type = 0;
  String get register =>
      type == 1 ? 'تسجيل حساب مزود خدمة جديد' : 'تسجيل حساب عميل جديد';
  String phone = '';
  String password = '';
  @override
  void initState() {
    if (widget.type != null) {
      type = widget.type;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var login = Provider.of<LoginProvider>(context, listen: false);
    var mediaQuery = MediaQuery.of(
      context,
    ).size;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          height: mediaQuery.height,
          child: Stack(
            alignment: Alignment.center,
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Positioned(
                top: mediaQuery.height * 0.1,
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/logo.png',
                    height: mediaQuery.height * 0.25,
                  ),
                ),
              ),
              Positioned(
                top: mediaQuery.height * 0.35,
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/icons/curved-login.png',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child:Single,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
