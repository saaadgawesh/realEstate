import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_state_app/Core/resources/App_Color.dart';
import 'package:real_state_app/Core/resources/Assets.dart';
import 'package:real_state_app/Features/widget/contact_info.dart';
import 'package:real_state_app/Features/widget/side_menu_section/download.dart';
import 'package:real_state_app/Features/widget/side_menu_section/goals.dart';
import 'package:real_state_app/Features/widget/side_menu_section/header_widget.dart';

class sideMenuSection extends StatelessWidget {
  const sideMenuSection({super.key, required this.text});

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerWdget(text: text),
          Divider(),
          SizedBox(height: 10),
          Text('contact info', style: text.titleLarge),
          SizedBox(height: 10),
          Contactinfo(text: text, title: 'address :', desc: ' kafrelsheikh'),
          Contactinfo(text: text, title: 'city :', desc: 'sidisalem'),
          Contactinfo(text: text, title: 'country :', desc: 'Egypt'),
          Contactinfo(
            text: text,
            title: 'email :',
            desc: 'example@example.com',
          ),
          Contactinfo(text: text, title: 'phone :', desc: '+20123456789'),
          Contactinfo(text: text, title: 'website :', desc: 'www.example.com'),
          Divider(),
          SizedBox(height: 10),
          Text('Goals', style: text.titleLarge),
          SizedBox(height: 5),
          goals(text: text, title: 'planning stage'),
          goals(text: text, title: 'execution phase'),
          goals(text: text, title: 'development stage'),
          goals(text: text, title: 'new way of living'),
          Divider(),
          SizedBox(height: 10),

          downloadedWidget(text: text),
          SizedBox(height: 10),
          Container(
            // alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColor.bgiconcolor,
              borderRadius: BorderRadius.circular(15),
            ),
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20,
              top: 10,
              bottom: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(onTap: (){},
                  child: SvgPicture.asset(
                    IconAssets.linkedin,
                    color: AppColor.bgdarkcolor,
                  ),
                ),
                GestureDetector(onTap: (){},
                  child: SvgPicture.asset(
                    IconAssets.twitter,
                    color: AppColor.bgdarkcolor,
                  ),
                ),
                GestureDetector(onTap: (){},
                  child: SvgPicture.asset(
                    IconAssets.github,
                    color: AppColor.bgdarkcolor,
                  ),
                ),
                GestureDetector(onTap: (){},
                  child: SvgPicture.asset(
                    IconAssets.dribble,
                    color: AppColor.bgdarkcolor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
