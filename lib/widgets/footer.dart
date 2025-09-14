import 'package:flutter/material.dart';
import '../constants/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      height: 300,
      width: double.maxFinite,
      alignment: Alignment.center,
      child: const Text(
        "Made by Raju Karki (RK) with Flutter \nby  watching youtube channel'Shohruh AK'",
        style: TextStyle(
          color: CustomColor.whiteSecondary,
          fontWeight: FontWeight.w100,
        ),
      ),
    );
  }
}
