import 'package:flutter/material.dart';
import 'package:real_state_app/Core/resources/App_Color.dart';
import 'package:real_state_app/Core/resources/App_FontSize.dart';
import 'package:real_state_app/Core/resources/Assets.dart';

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
            style: text.titleLarge?.copyWith(fontSize: AppFontsize.s40),
          ),
        ),
        Positioned(
          top: 300,
          left: 5,
          child: Container(
            decoration: BoxDecoration(
              color: AppColor.contactuscolor,
              borderRadius: BorderRadius.circular(10),
            ),

            child: TextButton(
              onPressed: () {},
              child: Text(
                'Contact Us',
                style: text.titleMedium?.copyWith(color: AppColor.blackcolor),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
