import 'dart:io';

import 'package:flutter/material.dart';
import 'package:offers_station/src/helper/image_picker_dialog.dart';
import 'package:offers_station/src/helper/navigator.dart';
import 'package:offers_station/src/widgets/custom_new_dialog.dart';
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
  List<File> image = [];
  _getImg() async {
    var imagePicker = ImagePickerDialog();
    imagePicker.show(
        context: context,
        onGet: (file) {
          if (file != null) {
            setState(() {
              image.add(file);
            });
          }
        });
  }

  var formKey = GlobalKey<FormState>();
  Widget _oneImgFile({
    File? img,
    int? index,
    int? id,
    String? imageUrl,
    int? imageUrlIndex,
  }) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 10),
            child: Align(
              alignment: Alignment.centerRight,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.file(img!)
                  // FileThumb(
                  //     asset: img,
                  //     width: 300,
                  //     height: 300,
                  //   )
                  ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: InkWell(
              onTap: () async {
                await CustomDialog().showOptionDialog(
                  msg: 'هل ترغب بحذف الصورة؟',
                  okFun: () {
                    setState(() {
                      image.removeAt(index!);
                    });
                  },
                  okMsg: 'نعم',
                  cancelFun: () {},
                  cancelMsg: 'لا',
                  context: context,
                );
              },
              child: Material(
                color: Colors.white,
                elevation: 2,
                shape: CircleBorder(),
                child: Padding(
                  padding: EdgeInsets.all(5),
                  child: Icon(Icons.close, size: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getImages(Size mediaQuery) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, left: 10),
      child: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          Directionality(
            textDirection: TextDirection.ltr,
            child: Visibility(
              visible: image.length <= 4,
              child: InkWell(
                onTap: () => _getImg(),
                child: Container(
                  height: mediaQuery.height * 0.08,
                  width: mediaQuery.width * 0.7,
                  margin: EdgeInsets.symmetric(horizontal: 10),

                  // width: mediaQuery.width*0.9,
                  decoration: BoxDecoration(
                      // color: Colors.black12,
                      borderRadius: BorderRadius.circular(9),
                      border: Border.all(color: Colors.black54)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.camera_alt,
                          color: Colors.black,
                        ),
                        Text(
                          "اختر صور للعرض",
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          // SizedBox(height: 10),
          (image.length < 1) == true
              ? Container(
                  height: 0,
                )
              : Directionality(
                  textDirection: TextDirection.rtl,
                  child: Container(
                    height: 120,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        if (image.length >= 1) ...[
                          ListView.builder(
                            physics: ScrollPhysics(
                              parent: NeverScrollableScrollPhysics(),
                            ),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: image.length,
                            itemBuilder: (context, index) {
                              return _oneImgFile(
                                  img: image[index], index: index);
                            },
                          ),
                        ],
                        // networkimage handlers after api connecting
                      ],
                    ),
                  ),
                )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'إضافة عرض',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Theme.of(context).primaryColor,
          onPressed: () {
            N.back();
          },
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
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
              labelText: 'عنوان العرض',
              onChanged: (v) {},
            ),
            TextFieldWidget(
              labelText: 'سعر العرض',
              keyboardType: TextInputType.number,
              onChanged: (v) => setState(
                () {},
              ),
            ),
            TextFieldWidget(
              labelText: 'تاريخ انتهاء العرض',
              onChanged: (v) => setState(() {} //=> signupProvider.email = v,
                  ),
            ),
            TextFieldWidget(
              enableText: false,
              labelText: 'الكمية القصوى للعرض',
              onChanged: (v) => setState(() {} //=> signupProvider.email = v,
                  ),
            ),
            TextFieldWidget(
              labelText: 'كود العرض',
              onChanged: (v) => setState(() {} //=> signupProvider.email = v,
                  ),
            ),
            Center(child: _getImages(mediaQuery)),
            TextFieldWidget(
              labelText: 'تفاصيل العرض',
              isDetails: true,
              onChanged: (v) => setState(() {} //=> signupProvider.email = v,
                  ),
            ),
            RegisterButton(
              color: Color(0xffF13F04),
              title: 'إرسال',
              onPressed: () async {CustomDialog().showOptionDialog(context: context, msg: 'هل أنت مت')
              },
            ),
          ],
        ),
      ),
    );
  }
}
