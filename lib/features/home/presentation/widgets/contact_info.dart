import 'package:flutter/material.dart';
import 'package:real_state_app/core/theme/app_colors.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({
    super.key,
    required this.text,
    required this.title,
    required this.desc,
  });

  final TextTheme text;
  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: text.titleMedium),
        Text(
          desc,
          style: text.titleMedium?.copyWith(color: AppColors.secondaryText),
        ),
      ],
    );
  }
}
