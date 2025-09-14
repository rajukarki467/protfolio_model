import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/sized.dart';
import 'package:my_portfolio/widgets/drawer_mobile.dart';
import 'package:my_portfolio/widgets/header_dasktop.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          endDrawer: constraints.maxWidth >= kMinDesktopWidth
              ? null
              : const DrawerMobile(),
          backgroundColor: CustomColor.ScaffoldBg,
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              //MAIN
              if (constraints.maxWidth >= kMinDesktopWidth)
                const HeaderDesktop()
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),

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
      },
    );
  }
}
