import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../utils/project_utils.dart';
import 'dart:js' as js;

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({super.key, required this.projects});
  final ProjectUtils projects;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 290,
      width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          //image
          Image.asset(
            projects.image,
            height: 140,
            width: 260,
            fit: BoxFit.cover,
          ),
          //title
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              projects.title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: CustomColor.whitePrimary,
              ),
            ),
          ),
          //substitle
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),

            child: Text(
              projects.subtitle,
              style: const TextStyle(
                color: CustomColor.whiteSecondary,
                fontSize: 12,
              ),
            ),
          ),
          const Spacer(),
          //footer
          Container(
            color: CustomColor.bgLight1,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                const Text(
                  "Available on:",
                  style: TextStyle(
                    color: CustomColor.yellowSecondary,
                    fontSize: 10,
                  ),
                ),
                const Spacer(),
                if (projects.iosLink != null)
                  InkWell(
                    onTap: () => {
                      js.context.callMethod('open', [projects.iosLink]),
                    },
                    child: Image.asset("assets/ios_icon.png", width: 19),
                  ),

                if (projects.androidLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: InkWell(
                      onTap: () {
                        js.context.callMethod('open', [projects.androidLink]);
                      },
                      child: Image.asset("assets/android_icon.png", width: 17),
                    ),
                  ),
                if (projects.webLink != null)
                  Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: InkWell(
                      onTap: () {
                        js.context.callMethod('open', [projects.webLink]);
                      },
                      child: Image.asset("assets/web_icon.png", width: 17),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
