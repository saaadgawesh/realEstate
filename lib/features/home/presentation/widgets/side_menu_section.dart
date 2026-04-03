import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_state_app/core/constants/app_assets.dart';
import 'package:real_state_app/core/theme/app_colors.dart';
import 'package:real_state_app/features/home/presentation/widgets/contact_info.dart';
import 'package:real_state_app/features/home/presentation/widgets/download_brochure.dart';
import 'package:real_state_app/features/home/presentation/widgets/goal_item.dart';
import 'package:real_state_app/features/home/presentation/widgets/header_widget.dart';

class SideMenuSection extends StatelessWidget {
  const SideMenuSection({super.key, required this.text});

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWidget(text: text),
            const Divider(),
            const SizedBox(height: 10),
            Text('contact info', style: text.titleLarge),
            const SizedBox(height: 10),
            ContactInfo(text: text, title: 'address :', desc: ' kafrelsheikh'),
            ContactInfo(text: text, title: 'city :', desc: 'sidisalem'),
            ContactInfo(text: text, title: 'country :', desc: 'Egypt'),
            ContactInfo(
              text: text,
              title: 'email :',
              desc: 'example@example.com',
            ),
            ContactInfo(text: text, title: 'phone :', desc: '+20123456789'),
            ContactInfo(text: text, title: 'website :', desc: 'www.example.com'),
            const Divider(),
            const SizedBox(height: 10),
            Text('Goals', style: text.titleLarge),
            const SizedBox(height: 5),
            GoalItem(text: text, title: 'planning stage'),
            GoalItem(text: text, title: 'execution phase'),
            GoalItem(text: text, title: 'development stage'),
            GoalItem(text: text, title: 'new way of living'),
            const Divider(),
            const SizedBox(height: 10),
            DownloadBrochure(text: text),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: AppColors.surfaceLight,
                borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10,
                bottom: 10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(
                      IconAssets.linkedin,
                      color: AppColors.backgroundDark,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(
                      IconAssets.twitter,
                      color: AppColors.backgroundDark,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(
                      IconAssets.github,
                      color: AppColors.backgroundDark,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset(
                      IconAssets.dribble,
                      color: AppColors.backgroundDark,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
