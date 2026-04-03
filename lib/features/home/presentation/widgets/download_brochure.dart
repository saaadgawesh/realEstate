import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_state_app/core/constants/app_assets.dart';
import 'package:real_state_app/core/theme/app_colors.dart';

class DownloadBrochure extends StatelessWidget {
  const DownloadBrochure({super.key, required this.text});

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(IconAssets.download),
        const SizedBox(width: 10),
        Text(
          'download bronchure',
          style: text.titleMedium?.copyWith(color: AppColors.secondaryText),
        ),
      ],
    );
  }
}
