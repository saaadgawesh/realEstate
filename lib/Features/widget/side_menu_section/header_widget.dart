import 'package:flutter/material.dart';
import 'package:real_state_app/Core/resources/App_Color.dart';
import 'package:real_state_app/Core/resources/Assets.dart';

class headerWdget extends StatelessWidget {
  const headerWdget({super.key, required this.text});

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColor.bgiconcolor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            ImageAssets.logo,
            color: AppColor.bgdarkcolor,
            width: 120,
          ),
          SizedBox(height: 15),

          Text(
            'Real Estate',
            style: text.titleLarge?.copyWith(color: AppColor.bgdarkcolor),
          ),
          SizedBox(height: 10),
          Text(
            'modern home with great \n interior design',
            textAlign: TextAlign.center,
            style: text.titleLarge?.copyWith(
              color: AppColor.secondarytextcolor,
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
