import 'package:flutter/material.dart';
import 'package:real_state_app/core/constants/app_assets.dart';
import 'package:real_state_app/core/layout/responsive.dart';
import 'package:real_state_app/core/theme/app_colors.dart';
import 'package:real_state_app/core/theme/app_font_sizes.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key, required this.text});

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            ImageAssets.background,
            height: MediaQuery.of(context).size.height * 0.8,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 200,
          left: 5,
          child: Text(
            'build a greate future \n for all of us !',
            style:
                Responsive.isDesktop(context)
                    ? text.titleLarge?.copyWith(fontSize: AppFontSizes.s40)
                    : text.titleLarge?.copyWith(fontSize: AppFontSizes.s20),
          ),
        ),
        Positioned(
          top: 300,
          left: 5,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.callToAction,
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Contact Us',
                style: text.titleMedium?.copyWith(color: AppColors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
