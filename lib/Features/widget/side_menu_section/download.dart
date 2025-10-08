
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_state_app/Core/resources/App_Color.dart';
import 'package:real_state_app/Core/resources/Assets.dart';

class downloadedWidget extends StatelessWidget {
  const downloadedWidget({
    super.key,
    required this.text,
  });

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(IconAssets.download),
        SizedBox(width: 10),
        Text(
          'download bronchure',
          style: text.titleMedium?.copyWith(
            color: AppColor.secondarytextcolor,
          ),
        ),
      ],
    );
  }
}
