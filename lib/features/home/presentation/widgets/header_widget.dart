import 'package:flutter/material.dart';
import 'package:real_state_app/core/constants/app_assets.dart';
import 'package:real_state_app/core/theme/app_colors.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key, required this.text});

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.surfaceLight,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            ImageAssets.logo,
            color: AppColors.backgroundDark,
            width: 120,
          ),
          const SizedBox(height: 15),
          Text(
            'Real Estate',
            style: text.titleLarge?.copyWith(color: AppColors.backgroundDark),
          ),
          const SizedBox(height: 10),
          Text(
            'modern home with great \n interior design',
            textAlign: TextAlign.center,
            style: text.titleLarge?.copyWith(color: AppColors.secondaryText),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
