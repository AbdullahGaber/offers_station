import 'dart:io';
import 'package:offers_station/src/helper/image_picker_dialog.dart';
import 'package:offers_station/src/logic/providers/auth/signup_provider.dart';
import 'package:offers_station/src/widgets/modal_bottom_widget.dart';
import 'package:offers_station/src/widgets/text_field_widget.dart';
import 'package:provider/provider.dart';

import '../../helper/mediaQuery.dart';

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
  String? sectionItem = 'اختر نوع المتجر';
  List<String> sections = [
    'متجر',
    'مطعم',
  ];
  @override
  Widget build(BuildContext context) {
    var signupProvider = Provider.of<SignupProvider>(context, listen: false);
    var mediaQuery = MediaQuery.of(context).size;
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
      body: SingleChildScrollView(
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
                'اكمل البيانات',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: context.height * 0.07,
            ),
            InkWell(
              onTap: () {
                ModalBottomWidget.showModalBottomWidget(
                    context: context,
                    items: sections
                        .map(
                          (e) => e,
                        )
                        .toList(),
                    mediaQuery: mediaQuery,
                    onTap: (v) async {
                      if (v != null) {}
                    });
              },
              child: TextFieldWidget(
                labelText: sectionItem,
                isRequired: true,
                enableText: false,
                onChanged: null,
                suffixIcon: Icon(
                  Icons.arrow_drop_down,
                  color: Colors.white,
                ),
              ),
            ),
            TextFieldWidget(
              isRequired: true,
              labelText: 'اسم المتجر بالعربي',
              onChanged: (v) {},
            ),
            TextFieldWidget(
              labelText: 'اسم المتجر بالإنجليزي',
              onChanged: (v) => setState(
                () => signupProvider.email = v,
              ),
            ),
            TextFieldWidget(
              labelText: 'أوقات العمل',
              onChanged: (v) => setState(
                () => signupProvider.email = v,
              ),
            ), TextFieldWidget(
              labelText: 'أوقات العمل',
              onChanged: (v) => setState(
                () => signupProvider.email = v,
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
                          signupProvider.image = file;
                        },
                      );
                    },
                    child: TextFieldWidget(
                      isRequired: true,
                      labelText: 'شعار المصنع',
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
                          backgroundColor: Colors.white.withOpacity(0.3),
                          child: IconButton(
                            icon: Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                            onPressed: () {
                              setState(() {
                                logoImage = null;
                              });
                              // signupProvider.image = null;
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
            //         signupProvider.providerDetails = v;
            //       });
            //     },
            //     isDetails: true,
            //     labelText: 'معلومات عن المركز',
            //   ),
            // ),

            RegisterButton(
              color: Color(0xffF13F04),
              title: 'تسجيل',
              onPressed: () async {
                // Navigator.of(context).pushAndRemoveUntil(
                //     MaterialPageRoute(
                //       builder: (c) => signupProvider.type == 0
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
