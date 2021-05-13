// import 'package:country_code_picker/country_code_picker.dart';
// import 'package:fahs/src/screens/auth/confirm_phone_screen.dart';
// import 'package:fahs/src/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../logic/providers/auth/mobile_register_provider.dart';
import '../../logic/providers/auth/phone_verfication_provider.dart';
import '../../logic/providers/auth/reset_password_phone_provider.dart';
import '../../logic/providers/auth/reset_password_provider.dart';
import '../../logic/providers/auth/reset_password_verfication_provider.dart';
import '../../logic/providers/auth/signup_provider.dart';
// import '../../providers/auth/register_mobile_provider.dart';
// import '../../providers/auth/reset_password_provider.dart';
// import '../../providers/auth/confirm_reset_provider.dart';

import '../../widgets/text_field_widget.dart';
// import '../../config.dart';
// import 'package:homemade_user/providers/auth/phoneVerificationProvider.dart';

import '../../widgets/register_button.dart';
// import '../../providers/auth/forget_password_provider.dart';
// import '../../providers/changeData/change_phone_provider.dart';
// import '../../providers/auth/signup_provider.dart';

class MobileRegisterScreen extends StatefulWidget {
  final String title;

  MobileRegisterScreen({
    this.title = 'تسجيل جديد',
  });

  @override
  _MobileRegisterScreenState createState() => _MobileRegisterScreenState();
}

class _MobileRegisterScreenState extends State<MobileRegisterScreen> {
  var controller = TextEditingController();
  var phoneNumber = '';
  var code = '+966';

  var isRegister = false;
  var key = GlobalKey<FormFieldState>();

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var register = Provider.of<MobileRegisterProvider>(context, listen: false);
    var forget = Provider.of<ResetPasswordPhoneProvider>(context);
    var confirm = Provider.of<ResetPasswordVerficationProvider>(context);
    var reset = Provider.of<ResetPasswordProvider>(context);
    var number = Provider.of<SignupProvider>(context, listen: false);
    var verficate =
        Provider.of<PhoneVerficationProvider>(context, listen: false);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        child: Scaffold(
          backgroundColor: Colors.white,
          // appBar: PreferredSize(
          //   preferredSize: Size.fromHeight(mediaQuery.height * 0.2),
          //   child: CustomAppBar(
          //     title: widget.title,
          //     centerTitle: true,
          //   ),
          // ),
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
                      widget.,
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
                      // mainAxisAlignment: MainAxisAlignment.center,
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
          // body: SingleChildScrollView(
          //   child: Column(
          //     children: [
          //       Center(
          //         child: Container(
          //           height: mediaQuery.height * 0.4,
          //           width: mediaQuery.width * 0.5,
          //           decoration: BoxDecoration(),
          //           child: Image.asset('assets/images/icon005.png'),
          //         ),
          //       ),
          //       Text(
          //         widget.title,
          //         textAlign: TextAlign.center,
          //         style: TextStyle(
          //           color: Colors.black,
          //           fontSize: 20,
          //         ),
          //       ),
          //       Text(
          //         'من فضلك قم بإدخال رقم جوالك ليصلك كود التفعيل',
          //         textAlign: TextAlign.center,
          //         style: TextStyle(
          //           color: Colors.black,
          //           fontSize: 15,
          //         ),
          //       ),
          //       Padding(
          //         padding: const EdgeInsets.all(10.0),
          //         child: TextFieldWidget(
          //           // suffixIcon: FittedBox(
          //           //   child: CountryCodePicker(
          //           //     showFlag: false,
          //           //     countryFilter: ['SA', 'EG'],
          //           //     initialSelection: 'SA',
          //           //     onChanged: (c) {
          //           //       code = c.dialCode;
          //           //     },
          //           //   ),
          //           // ),
          //           hintText: 'رقم الجوال',
          //           onChanged: (value) {
          //             setState(() {
          //               phoneNumber = value;
          //             });
          //             if (widget.title != 'إستعادة كلمة المرور') {
          //               register.phone = code + value;
          //               number.phone = code + value;
          //               phoneNumber = code + value;
          //               verficate.phone = code + value;
          //             } else {
          //               confirm.phone = code + value;
          //               forget.phone = code + value;
          //               reset.phone = code + value;
          //             }
          //           },
          //           keyboardType: TextInputType.number,
          //         ),
          //       ),
          //       RegisterButton(
          //         title: 'التالي',
          //         onPressed: phoneNumber.isEmpty
          //             ? null
          //             : () async {
          //                 // Navigator.of(context).pushReplacement(
          //                 //   MaterialPageRoute(
          //                 //     builder: (c) => ConfirmPhoneScreen(
          //                 //       stateOfVerificationCode:
          //                 //           widget.title != 'إستعادة كلمة المرور'
          //                 //               ? 1
          //                 //               : 2,
          //                 //     ),
          //                 //   ),
          //                 // );
          //                 // // if (widget.title != 'تسجيل جديد') {
          //                 // //   forget.forgetPassword(context);
          //                 // // } else {
          //                 // //   await register.registerPhone(context);
          //                 // // }
          //                 // // print('sssssss');
          //               },
          //       ),
          //     ],
          //   ),
          // ),
        ),
      ),
    );
  }
}
