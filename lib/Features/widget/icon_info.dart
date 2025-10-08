import 'package:flutter/material.dart';
import 'package:real_state_app/Core/resources/App_Color.dart';
import 'package:real_state_app/Features/widget/main_section/secondary_contact_section.dart';
import 'package:real_state_app/responsive.dart';

class iconInfo extends StatelessWidget {
  const iconInfo({super.key, required this.text});

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 100, right: 100),
      decoration: BoxDecoration(
        color: AppColor.bgiconcolor,
        borderRadius: BorderRadius.circular(15),
      ),
      child:
          Responsive.isMobileLarge(context)
              ? Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: SeconderyContactSection(
                          text: text,
                          numbers: '+87',
                          icondata: Icons.location_on,
                        ),
                      ),
                      Expanded(
                        child: SeconderyContactSection(
                          text: text,
                          numbers: '+139',
                          icondata: Icons.facebook,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SeconderyContactSection(
                          text: text,
                          numbers: '+30',
                          icondata: Icons.phone,
                        ),
                      ),
                      Expanded(
                        child: SeconderyContactSection(
                          text: text,
                          numbers: '+13k',
                          icondata: Icons.location_on,
                        ),
                      ),
                    ],
                  ),
                ],
              )
              : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SeconderyContactSection(
                    text: text,
                    numbers: '+87',
                    icondata: Icons.location_on,
                  ),
                  SeconderyContactSection(
                    text: text,
                    numbers: '+139',
                    icondata: Icons.location_on,
                  ),
                  SeconderyContactSection(
                    text: text,
                    numbers: '+30',
                    icondata: Icons.location_on,
                  ),
                  SeconderyContactSection(
                    text: text,
                    numbers: '+13k',
                    icondata: Icons.location_on,
                  ),
                ],
              ),
    );
  }
}
