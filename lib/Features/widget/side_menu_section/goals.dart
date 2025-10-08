import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_state_app/Core/resources/App_Color.dart';
import 'package:real_state_app/Core/resources/Assets.dart';

class goals extends StatelessWidget {
  const goals({super.key, required this.text, required this.title});

  final TextTheme text;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(IconAssets.check),
        SizedBox(width: 10),
        Text(
          title,
          style: text.titleMedium?.copyWith(color: AppColor.secondarytextcolor),
        ),
      ],
    );
  }
}
