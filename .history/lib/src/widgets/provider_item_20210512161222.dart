import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import '../helper/mediaQuery.dart';


class ProviderItem extends StatelessWidget {
  final String? providerImage;
  final String? providerName;
  final double? providerRate;
  final double? providerDistance;
  final String? serviceCost;
  final Function()? onPressed;
  final bool showCircleImage;
  ProviderItem({
    @required this.providerName,
    @required this.providerImage,
    @required this.providerRate,
    @required this.providerDistance,
    @required this.serviceCost,
    @required this.onPressed,
    this.showCircleImage = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
              padding: EdgeInsets.symmetric(
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
                          child: Text(
                            'اسم مزود الخدمة',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            '4.5 كم',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: context.height * 0.14,
                    width: context.width * 0.22,
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
