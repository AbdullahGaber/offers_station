import 'package:flutter/material.dart';
import '../helper/mediaQuery.dart';

class ProviderHomeButton extends StatelessWidget {
  final String title;
  final String imagePath;
  final Function() onPressed;
  final bool p
  ProviderHomeButton({
    required this.title,
    required this.imagePath,
    required this.onPressed,

  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 5),
        height: context.height * 0.15,
        width: context.width * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Theme.of(context).primaryColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageIcon(
              AssetImage(imagePath),
              size: context.height * 0.08,
              color: Colors.white,
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
