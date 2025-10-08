import 'package:flutter/material.dart';
import 'package:real_state_app/Features/widget/icon_info.dart';
import 'package:real_state_app/Features/widget/main_section/HomeBanner.dart';
import 'package:real_state_app/Features/widget/main_section/Recommendation.dart';
import 'package:real_state_app/Features/widget/main_section/our_projects.dart';

class mainSection extends StatelessWidget {
  const mainSection({super.key, required this.text});

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeBanner(text: text),
        SizedBox(height: 25),
        iconInfo(text: text),
        SizedBox(height: 25),
        Divider(),
        ourProjects(text: text),
        Divider(),
        SizedBox(height: 25),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: RecomendationWidget(text: text)),
      ],
    );
  }
}
