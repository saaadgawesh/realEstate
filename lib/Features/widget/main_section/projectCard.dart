import 'package:flutter/material.dart';
import 'package:real_state_app/Core/resources/App_Color.dart';
import 'package:real_state_app/Core/resources/App_FontSize.dart';
import 'package:real_state_app/models/projects.dart';
import 'package:real_state_app/responsive.dart';

class projectCard extends StatelessWidget {
  const projectCard({super.key, required this.text, required this.index});

  final TextTheme text;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.bgiconcolor,
        borderRadius: BorderRadius.circular(15),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(demoProjects[index].image ?? ''),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              demoProjects[index].title ?? '',
              style:
                  Responsive.isDesktop(context)
                      ? text.titleLarge?.copyWith(color: AppColor.bgdarkcolor)
                      : text.titleLarge?.copyWith(
                        fontSize: AppFontsize.s14,
                        color: AppColor.bgdarkcolor,
                      ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              demoProjects[index].description ?? '',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: text.titleLarge?.copyWith(color: AppColor.bgdarkcolor),
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text('View More')),
        ],
      ),
    );
  }
}
