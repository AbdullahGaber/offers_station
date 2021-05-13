import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../logic/providers/auth/reset_password_provider.dart';
import '../../widgets/text_field_widget.dart';
import '../../widgets/register_button.dart';

class ResetPasswordScreen extends StatefulWidget {
  final bool isResetPassword;
  ResetPasswordScreen({this.isResetPassword = true});
  @override
  _ResetPasswordScreenState createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  bool securePassword = true;
  bool secureConfirm = true;

  @override
  Widget build(BuildContext context) {
    var resetPasswordProvider =
        Provider.of<ResetPasswordProvider>(context, listen: false);
    var mediaQuery = MediaQuery.of(context).size;
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
                top: mediaQuery.height * 0.05,
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
                right: mediaQuery.width * 0.01,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                  ),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      type == 0
                          ? 'تسجيل الدخول كعميل'
                          : 'تسجيل الدخول كمزود خدمة',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: mediaQuery.height * 0.35,
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.only(top: mediaQuery.height * 0.1),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/icons/curved-login.png',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextFieldWidget(
                          labelText: 'رقم الجوال',
                          keyboardType: TextInputType.number,
                          onChanged: (v) => phone = v,
                          suffixIcon: Transform.scale(
                            scale: 0.5,
                            child: ImageIcon(
                              AssetImage(
                                'assets/icons/person.png',
                              ),
                              color: Color(0xffF13F04),
                            ),
                          ),
                          // suffixIcon: Container(
                          //   width: mediaQuery.width * 0.01,
                          //   height: mediaQuery.width * 0.01,
                          //   padding: EdgeInsets.symmetric(horizontal: 5),
                          //   decoration: BoxDecoration(
                          //     borderRadius: BorderRadius.circular(11),
                          //     color: Colors.grey[400],
                          //   ),
                          //   child: Center(
                          //     child: Text(
                          //       code,
                          //       style: TextStyle(
                          //         color: Colors.black,
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          // suffixIcon: FittedBox(
                          //   child: CountryCodePicker(
                          //     textStyle: TextStyle(
                          //         // fontSize: 5,
                          //         ),
                          //     showFlag: false,
                          //     initialSelection: 'SA',
                          //     countryFilter: ['SA', 'EG'],
                          //     onChanged: (c) {
                          //       print(
                          //           '${c.name}&&${c.flagUri}&&${c.dialCode}**${c.code}');
                          //     },
                          //   ),
                          // ),
                        ),
                        TextFieldWidget(
                          labelText: 'كلمة المرور',
                          secureText: secureText,
                          onChanged: (v) => password = v,
                          suffixIcon: IconButton(
                            icon: Icon(
                              secureText
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Color(0xffF13F04),
                            ),
                            onPressed: () {
                              setState(() {
                                secureText = !secureText;
                              });
                            },
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: mediaQuery.width * 0.11),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (ctx) => MobileRegisterScreen(
                                      title: 'إستعادة كلمة المرور',
                                    ),
                                  ),
                                );
                              },
                              child: Text(
                                'هل نسيت كلمة المرور؟',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.black,
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: mediaQuery.height * 0.03,
                        ),

                        RegisterButton(
                          color: Color(0xffF13F04),
                          title: 'تسجيل الدخول',
                          onPressed: () async {
                            // await login.loginUser(context, phone, password);
                            // Navigator.of(context).pushAndRemoveUntil(
                            //   MaterialPageRoute(
                            //     builder: (c) => type == 0
                            //         ? TabScreen(
                            //             type: type,
                            //           )
                            //         : HomeScreen(type: type),
                            //   ),
                            //   (r) => false,
                            // );
                          },
                        ),
                        Container(
                          // margin: EdgeInsets.symmetric(horizontal: 25),
                          width: mediaQuery.width * 0.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Divider(
                                  thickness: 3,
                                ),
                              ),
                              Text(
                                'أو',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Expanded(
                                child: Divider(
                                  thickness: 3,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: mediaQuery.height * 0.01,
                        ),
                        InkWell(
                          onTap: () => {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) => MobileRegisterScreen(
                                  title: register,
                                ),
                              ),
                            ),
                            Provider.of<SignupProvider>(context, listen: false)
                                .type = type,
                          },
                          child: Center(
                            child: Text(
                              register,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: mediaQuery.height * 0.01,
                        ),
                        Container(
                          // margin: EdgeInsets.symmetric(horizontal: 25),
                          width: mediaQuery.width * 0.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Divider(
                                  thickness: 3,
                                ),
                              ),
                              Text(
                                'أو',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              Expanded(
                                child: Divider(
                                  thickness: 3,
                                ),
                              ),
                            ],
                          ),
                        ),
                        RegisterButton(
                          color: Color(0xffF13F04),
                          title: type == 0 ? 'دخول كمزود خدمة' : 'دخول كعميل',
                          onPressed: () async {
                            setState(() {
                              type = type == 0 ? 1 : 0;
                            });
                            // await login.loginUser(context, phone, password);
                          },
                        ),
                        // RegisterButton(
                        //   color: Color(0xff272D45),
                        //   title: 'مستخدم جديد',
                        //   onPressed: () {
                        //     Navigator.of(context).push(MaterialPageRoute(
                        //       builder: (ctx) => ChooseRegisterTypeScreen(),
                        //     ));
                        //   },
                        // ),
                        //
                        //
                        //
                        // SizedBox(
                        //   height: mediaQuery.height * 0.01,
                        // ),

                        // Text(
                        //   'لو لم يكن لديك حساب',
                        //   textAlign: TextAlign.center,
                        //   style: TextStyle(
                        //     color: Colors.black,
                        //     fontWeight: FontWeight.bold,
                        //     fontSize: 15,
                        //   ),
                        // ),
                        // //   Text(
                        // //   'لو لم يكن لديك حساب ',
                        // //   style: TextStyle(
                        // //     color: Colors.black,
                        // //     fontSize: 20,
                        // //   ),
                        // // ),
                        // RichText(
                        //   textAlign: TextAlign.center,
                        //   text: TextSpan(
                        //     children: [
                        //       TextSpan(
                        //         text: 'يمكنك التسجيل',
                        //         style: TextStyle(
                        //           color: Colors.black,
                        //           fontSize: 15,
                        //           fontWeight: FontWeight.bold,
                        //         ),
                        //       ),
                        //       TextSpan(
                        //         text: ' من هنا',
                        //         style: TextStyle(
                        //           color: Color(0xff20C3BA),
                        //           fontSize: 15,
                        //           fontWeight: FontWeight.bold,
                        //         ),
                        //         recognizer: TapGestureRecognizer()
                        //           ..onTap = () => Navigator.of(context).push(
                        //                 MaterialPageRoute(
                        //                   builder: (ctx) => ChooseRegisterTypeScreen(),
                        //                 ),
                        //               ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
   
   
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: mediaQuery.height * 0.06,
            ),
            Image.asset(
              'assets/images/icon005.png',
              height: mediaQuery.height * 0.25,
            ),
            SizedBox(
              height: mediaQuery.height * 0.05,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'تغيير كلمة المرور',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: mediaQuery.height * 0.07,
            ),
            TextFieldWidget(
              labelText: 'كلمة المرور',
              secureText: securePassword,
              onChanged: (v) => resetPasswordProvider.password = v,
              suffixIcon: IconButton(
                icon: Icon(
                  securePassword ? Icons.visibility : Icons.visibility_off,
                  size: 15,
                  color: Color(0xff20C3BA),
                ),
                onPressed: () {
                  setState(() {
                    securePassword = !securePassword;
                  });
                },
              ),
            ),
            TextFieldWidget(
              labelText: 'تأكيد كلمة المرور',
              onChanged: (v) => resetPasswordProvider.confirmPassword = v,
              secureText: secureConfirm,
              suffixIcon: IconButton(
                icon: Icon(
                  secureConfirm ? Icons.visibility : Icons.visibility_off,
                  size: 15,
                  color: Color(0xff20C3BA),
                ),
                onPressed: () {
                  setState(() {
                    secureConfirm = !secureConfirm;
                  });
                },
              ),
            ),
            SizedBox(
              height: mediaQuery.height * 0.02,
            ),
            RegisterButton(
              title: 'حفظ',
              onPressed: () async {
                // await resetPasswordProvider.resetPassword(
                //   context,
                // );
              },
            ),
          ],
        ),
      ),
    );
  }
}
