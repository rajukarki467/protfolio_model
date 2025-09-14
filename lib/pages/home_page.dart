import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/nav_items.dart';
import 'package:my_portfolio/style/text_style.dart';
import 'package:my_portfolio/widgets/header_dasktop.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';
import 'package:my_portfolio/widgets/site_logo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.ScaffoldBg,
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          //MAIN
          // HeaderDesktop(),
          HeaderMobile(onLogoTap: () {}, onMenuTap: () {}),

          //SKILL
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),
          //PROJECTS
          Container(height: 500, width: double.maxFinite),
          //CONTACT
          Container(
            height: 500,
            width: double.maxFinite,
            color: Colors.blueGrey,
          ),
          //FOOTER
          Container(height: 500, width: double.maxFinite),
        ],
      ),
    );
  }
}
