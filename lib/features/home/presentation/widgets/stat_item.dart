import 'package:flutter/material.dart';
import 'package:real_state_app/core/theme/app_colors.dart';

class StatItem extends StatelessWidget {
  const StatItem({
    super.key,
    required this.text,
    required this.numbers,
    required this.icondata,
  });

  final TextTheme text;
  final String numbers;
  final IconData icondata;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icondata, color: AppColors.backgroundDark, size: 50),
        const SizedBox(height: 10),
        Text(numbers, style: text.titleSmall),
      ],
    );
  }
}
