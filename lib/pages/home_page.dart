import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/sized.dart';
import '../constants/sns_link.dart';
import '../widgets/contacts_sections.dart';
import '../widgets/drawer_mobile.dart';
import '../widgets/footer.dart';
import '../widgets/header_dasktop.dart';
import '../widgets/header_mobile.dart';
import '../widgets/main_desktop.dart';
import '../widgets/main_mobile.dart';
import '../widgets/projects_sections.dart';
import '../widgets/skills_desktop.dart';
import '../widgets/skills_mobile.dart';
import 'dart:js' as js;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          endDrawer: constraints.maxWidth >= kMinDesktopWidth
              ? null
              : DrawerMobile(
                  onNavItemTap: (int navIndex) {
                    //call fuc
                    scaffoldKey.currentState?.closeEndDrawer();
                    scrollToSection(navIndex);
                  },
                ),
          backgroundColor: CustomColor.ScaffoldBg,
          body: SingleChildScrollView(
            controller: scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(key: navbarKeys.first),
                //MAIN
                if (constraints.maxWidth >= kMinDesktopWidth)
                  // MainDesktop(),
                  HeaderDesktop(
                    onNavMenuTap: (int index) {
                      //call fuc
                      scrollToSection(index);
                    },
                  )
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
                  key: navbarKeys[1],
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
                ProjectsSections(key: navbarKeys[2]),
                const SizedBox(height: 50),
                //CONTACT
                ContactsSections(key: navbarKeys[3]),
                const SizedBox(height: 30),

                //FOOTER
                Footer(),
              ],
            ),
          ),
        );
      },
    );
  }

  void scrollToSection(int navIndex) {
    if (navIndex == 4) {
      //open a blog page
      js.context.callMethod('open', [SnsLinks.blog]);
      return;
    }
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(microseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
