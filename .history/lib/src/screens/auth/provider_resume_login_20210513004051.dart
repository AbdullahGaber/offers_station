import 'dart:io';

import 'package:flutter/material.dart';
import 'package:offers_station/src/helper/navigator.dart';
import 'package:offers_station/src/widgets/register_button.dart';

class ProviderResumeLogin extends StatefulWidget {
  @override
  _ProviderResumeLoginState createState() => _ProviderResumeLoginState();
}

class _ProviderResumeLoginState extends State<ProviderResumeLogin> {
    File? logoImage;
  File? insuranceImage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body:  SingleChildScrollView(
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: context.height * 0.06,
                      ),
                      Image.asset(
                        'assets/images/coloredLogo.png',
                        height: context.height * 0.25,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          !isUserSignUp
                              ? 'تسجيل جديد كمزود خدمة'
                              : 'تسجيل جديد كعميل',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: context.height * 0.07,
                      ),
                      TextFieldWidget(
                        isRequired: true,
                        labelText: 'الاسم',
                        onChanged: (v) => setState(
                          () => signupProvider!.name = v,
                        ),
                      ),
                      TextFieldWidget(
                        isRequired: true,
                        labelText: 'رقم الجوال',
                        keyboardType: TextInputType.number,
                        initialValue: signupProvider!.phone,
                        onChanged: (v) {},
                        enableText: false,
                      ),
                      TextFieldWidget(
                        labelText: 'البريد الالكتروني',
                        onChanged: (v) => setState(
                          () => signupProvider!.email = v,
                        ),
                      ),
                      logoImage == null
                          ? InkWell(
                              onTap: () {
                                ImagePickerDialog().show(
                                  context: context,
                                  onGet: (file) {
                                    print(file!.path);
                                    setState(() {
                                      logoImage = file;
                                    });
                                    signupProvider!.image = file;
                                  },
                                );
                              },
                              child: TextFieldWidget(
                                isRequired: true,
                                labelText: isUserSignUp
                                    ? 'الصورة الشخصية'
                                    : 'شعار المصنع',
                                enableText: false,
                                onChanged: (v) {},
                                suffixIcon: Icon(
                                  Icons.camera_alt,
                                  color: Color(0xffF13F04),
                                ),
                              ),
                            )
                          : Stack(
                              children: [
                                Container(
                                  width: context.width * 0.8,
                                  height: context.height * 0.2,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9),
                                    image: DecorationImage(
                                      image: FileImage(logoImage!),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  right: context.width * 0.01,
                                  top: context.height * 0.01,
                                  child: CircleAvatar(
                                    backgroundColor:
                                        Colors.white.withOpacity(0.3),
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          logoImage = null;
                                        });
                                        // signupProvider!.image = null;
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                      // Visibility(
                      //   visible: !isUserSignUp,
                      //   child: TextFieldWidget(
                      //     isRequired: true,
                      //     onChanged: (v) {
                      //       setState(() {
                      //         signupProvider!.providerDetails = v;
                      //       });
                      //     },
                      //     isDetails: true,
                      //     labelText: 'معلومات عن المركز',
                      //   ),
                      // ),

                      TextFieldWidget(
                        isRequired: true,
                        labelText: 'كلمة المرور',
                        secureText: securePassword,
                        onChanged: (v) =>
                            setState(() => signupProvider!.password = v),
                        suffixIcon: IconButton(
                          icon: Icon(
                            securePassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                            size: 15,
                            color: Color(0xffF13F04),
                          ),
                          onPressed: () {
                            setState(() {
                              securePassword = !securePassword;
                            });
                          },
                        ),
                      ),
                      TextFieldWidget(
                        isRequired: true,
                        labelText: 'تأكيد كلمة المرور',
                        secureText: secureConfirmPassword,
                        onChanged: (v) => setState(
                            () => signupProvider!.passwordConfirmation = v),
                        suffixIcon: IconButton(
                          icon: Icon(
                            secureConfirmPassword
                                ? Icons.visibility
                                : Icons.visibility_off,
                            size: 15,
                            color: Color(0xffF13F04),
                          ),
                          onPressed: () {
                            setState(() {
                              secureConfirmPassword = !secureConfirmPassword;
                            });
                          },
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          right: context.width * 0.07,
                        ),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                'أوافق على كافة الشروط والأحكام',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Colors.black,
                                  // fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                             
                            ],
                          ),
                        ),
                      ),
                      RegisterButton(
                        color: Color(0xffF13F04),
                        title: 'تسجيل',
                        onPressed: 
                            () async {
                               
                                // Navigator.of(context).pushAndRemoveUntil(
                                //     MaterialPageRoute(
                                //       builder: (c) => signupProvider!.type == 0
                                //           ? TabScreen(type: signupProvider.type)
                                //           : HomeScreen(
                                //               type: signupProvider.type),
                                //     ),
                                //     (route) => false);
                                // await signupProvider.signUp(context);
                              },
                      ),
                    ],
                  ),
                ),
    );
  }
}
