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
  String sectionLabel = 'اختر القسم';
  List<String> sections = [
    'مطعم',
    'سوبر ماركت',
  ];
  
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
                      if (v != null) {
                        setState(() {
                          sectionLabel = v;
                        });
                      }
                    });
              },
              child: TextFieldWidget(
                labelText: sectionLabel,
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
                () {},
              ),
            ),
            TextFieldWidget(
              labelText: 'أوقات العمل',
              onChanged: (v) => setState(() {} //=> signupProvider.email = v,
                  ),
            ),
            TextFieldWidget(
              enableText: false,
              labelText: 'أوقات العمل',
              onChanged: (v) => setState(() {} //=> signupProvider.email = v,
                  ),
            ),
            TextFieldWidget(
              labelText: 'رابط الفيديو التعريفي',
              keyboardType: TextInputType.url,
              onChanged: (v) => setState(() {} //=> signupProvider.email = v,
                  ),
            ),
            TextFieldWidget(
              labelText: 'رقم التواصل',
              keyboardType: TextInputType.number,
              onChanged: (v) => setState(() {} //=> signupProvider.email = v,
                  ),
            ),
            TextFieldWidget(
              labelText: 'رابط المتجر',
              keyboardType: TextInputType.url,
              onChanged: (v) => setState(() {} //=> signupProvider.email = v,
                  ),
            ),
            Center(child: _getImages(mediaQuery)),
           
        
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
