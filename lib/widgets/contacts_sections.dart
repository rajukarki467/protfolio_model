import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/sized.dart';
import 'package:my_portfolio/constants/sns_link.dart';
import 'package:my_portfolio/widgets/custome_textfield.dart';
import 'dart:js' as js;

class ContactsSections extends StatelessWidget {
  const ContactsSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
      color: CustomColor.bgLight1,
      child: Column(
        children: [
          //title
          const Text(
            "Get in Touch",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 50),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700, maxHeight: 100),
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth >= kMinDesktopWidth) {
                  return buildNameEmailfieldDesktop();
                }
                // else
                return buildNameEmailfieldMobile();
              },
            ),
          ),
          const SizedBox(height: 15),
          //message
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700),
            child: CustomeTextfield(hintText: "Your message", maxLines: 10),
          ),

          //send Button
          const SizedBox(height: 20),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700),
            child: SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: CustomColor.yellowPimary,
                ),
                onPressed: () {},
                child: const Text(
                  "Get in touch",
                  style: TextStyle(color: CustomColor.whitePrimary),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),

          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 700),
            child: const Divider(),
          ),
          const SizedBox(height: 15),
          //SNS icons buttons links
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.github]);
                },
                child: Image.asset("github.png", width: 28),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.github]);
                },
                child: Image.asset("linkedin.png", width: 28),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.facebook]);
                },
                child: Image.asset("facebook.png", width: 28),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.instagram]);
                },
                child: Image.asset("instagram.png", width: 28),
              ),
              InkWell(
                onTap: () {
                  js.context.callMethod('open', [SnsLinks.telegram]);
                },
                child: Image.asset("telegram.png", width: 28),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Row buildNameEmailfieldDesktop() {
    return Row(
      children: [
        //name
        Flexible(child: CustomeTextfield(hintText: "Your name")),
        const SizedBox(width: 15),
        //email
        Flexible(child: CustomeTextfield(hintText: "Your email")),
      ],
    );
  }

  Column buildNameEmailfieldMobile() {
    return Column(
      children: [
        //name
        Flexible(child: CustomeTextfield(hintText: "Your name")),
        const SizedBox(height: 15),
        //email
        Flexible(child: CustomeTextfield(hintText: "Your email")),
      ],
    );
  }
}
