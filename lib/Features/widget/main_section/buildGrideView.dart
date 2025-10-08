

import 'package:flutter/material.dart';
import 'package:real_state_app/Core/resources/App_Color.dart';
import 'package:real_state_app/Core/resources/App_FontSize.dart';
import 'package:real_state_app/Features/widget/main_section/projectCard.dart';
import 'package:real_state_app/models/projects.dart';
import 'package:real_state_app/responsive.dart';

class buildGrideView extends StatelessWidget {
  const buildGrideView({
    super.key,
    required this.text,
    required this.childaspectratio,
    required this.itemcount,
    required this.crossaxiscount,
    required this.itembuilder,
  });

  final TextTheme text;
final double childaspectratio;
final int itemcount;
final int crossaxiscount;
final IndexedWidgetBuilder itembuilder;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossaxiscount,
        childAspectRatio: childaspectratio,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
      ),
      itemCount: itemcount,
      itemBuilder: (BuildContext context, int index) {
        return projectCard(text: text, index: index);
      },
    );
  }
}
