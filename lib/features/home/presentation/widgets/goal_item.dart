import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_state_app/core/constants/app_assets.dart';
import 'package:real_state_app/core/theme/app_colors.dart';

class GoalItem extends StatelessWidget {
  const GoalItem({super.key, required this.text, required this.title});

  final TextTheme text;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(IconAssets.check),
        const SizedBox(width: 10),
        Text(
          title,
          style: text.titleMedium?.copyWith(color: AppColors.secondaryText),
        ),
      ],
    );
  }
}
