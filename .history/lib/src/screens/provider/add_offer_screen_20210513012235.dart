import 'package:flutter/material.dart';
import 'package:offers_station/src/helper/image_picker_dialog.dart';
import 'package:offers_station/src/widgets/modal_bottom_widget.dart';
import 'package:offers_station/src/widgets/register_button.dart';
import 'package:offers_station/src/widgets/text_field_widget.dart';
import '../../helper/mediaQuery.dart';

class AddOfferScreen extends StatefulWidget {
  @override
  _AddOfferScreenState createState() => _AddOfferScreenState();
}

class _AddOfferScreenState extends State<AddOfferScreen> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
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
                () => ,
              ),
            ),
            TextFieldWidget(
              labelText: 'أوقات العمل',
              onChanged: (v) => setState(
                () {} //=> signupProvider.email = v,
              ),
            ),
            TextFieldWidget(
              enableText: false,
              labelText: 'أوقات العمل',
              onChanged: (v) => setState(
                () {} //=> signupProvider.email = v,
              ),
            ),
            TextFieldWidget(
              labelText: 'رابط الفيديو التعريفي',
              keyboardType: TextInputType.url,
              onChanged: (v) => setState(
                () {} //=> signupProvider.email = v,
              ),
            ),
            TextFieldWidget(
              labelText: 'رقم التواصل',
              keyboardType: TextInputType.number,
              onChanged: (v) => setState(
                () {} //=> signupProvider.email = v,
              ),
            ),
            TextFieldWidget(
              labelText: 'رابط المتجر',
              keyboardType: TextInputType.url,
              onChanged: (v) => setState(
                () {} //=> signupProvider.email = v,
              ),
            ),
            Center(child: _getImages(mediaQuery)),
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
                      labelText: 'صورة اللوجو للمتجر',
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
              title: 'إرسال',
              onPressed: () async {
                // Navigator.of(context).pushAndRemoveUntil(
                //     MaterialPageRoute(
                //       builder: (c) {} //=> signupProvider.type == 0
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
