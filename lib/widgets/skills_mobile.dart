import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/skill_items.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //platform
        for (int i = 0; i < platformItems.length; i++)
          Container(
            margin: EdgeInsets.only(bottom: 5),
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: CustomColor.bgLight2,
              borderRadius: BorderRadius.circular(5),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 20,
              ),
              leading: Image.asset(platformItems[i]['img'], width: 26),
              title: Text(
                platformItems[i]['title'],
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
            ),
          ),
        const SizedBox(height: 50),
        Wrap(
          spacing: 10.0,
          runSpacing: 10.0,
          alignment: WrapAlignment.center,
          children: [
            for (int i = 0; i < skillItems.length; i++)
              Chip(
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 16,
                ),
                backgroundColor: CustomColor.bgLight2,
                label: Text(skillItems[i]['title']),
                avatar: Image.asset(skillItems[i]['img']),
              ),
          ],
        ),

        //skill
      ],
    );
  }
}
