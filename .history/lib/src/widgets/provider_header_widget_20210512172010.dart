import 'package:flutter/material.dart';

class ProviderHeaderWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 10,
            ),
            child: Row(
              children: [
                Container(
                  width: context.width * 0.6,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '4.52 كم',
                              style: TextStyle(
                                color: Colors.black54,
                              ),
                            ),
                            Text(
                              'اسم مزود الخدمة',
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'وصف بسيط لمزود الخدمة',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '+966000000',
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: Color(0xff7DAC53),
                                child: Icon(
                                  FontAwesomeIcons.phone,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: context.height * 0.01,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'https://www.google.com',
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              child: CircleAvatar(
                                radius: 15,
                                backgroundColor: Theme.of(context).primaryColor,
                                child: Icon(
                                  FontAwesomeIcons.link,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  width: context.width * 0.25,
                  height: context.height * 0.17,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(9),
                    child: Image.asset(
                      'assets/images/pizza.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}