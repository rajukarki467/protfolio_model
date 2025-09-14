import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/sized.dart';
import 'package:my_portfolio/constants/skill_items.dart';
import 'package:my_portfolio/utils/project_utils.dart';
import 'package:my_portfolio/widgets/contacts_sections.dart';
import 'package:my_portfolio/widgets/custome_textfield.dart';
import 'package:my_portfolio/widgets/drawer_mobile.dart';
import 'package:my_portfolio/widgets/header_dasktop.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';
import 'package:my_portfolio/widgets/main_desktop.dart';
import 'package:my_portfolio/widgets/main_mobile.dart';
import 'package:my_portfolio/widgets/project_card.dart';
import 'package:my_portfolio/widgets/projects_sections.dart';
import 'package:my_portfolio/widgets/skills_desktop.dart';
import 'package:my_portfolio/widgets/skills_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
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
                // MainDesktop(),
                const HeaderDesktop()
              else
                //for mobile
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),

              if (constraints.maxWidth >= kMinDesktopWidth)
                // MainDesktop(),
                const MainDesktop()
              else
                //for mobile
                const MainMobile(),

              //SKILL
              Container(
                width: screenWidth,
                color: CustomColor.bgLight1,
                padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //title
                    const Text(
                      "What I can do  ",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary,
                      ),
                    ),

                    const SizedBox(height: 50),
                    if (constraints.maxWidth >= kMedDesktopWidth)
                      //platform and skill - desktop
                      const SkillsDesktop()
                    else
                      //platform and skill - mobile
                      const SkillsMobile(),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              //PROJECTS
              ProjectsSections(),
              const SizedBox(height: 50),
              //CONTACT
              ContactsSections(),
              //FOOTER
              Container(height: 500, width: double.maxFinite),
            ],
          ),
        );
      },
    );
  }
}
