import 'package:flutter/material.dart';
import 'package:real_state_app/Features/widget/main_section/buildGrideView.dart';
import 'package:real_state_app/Features/widget/main_section/projectCard.dart';
import 'package:real_state_app/models/projects.dart';
import 'package:real_state_app/responsive.dart';

class ourProjects extends StatelessWidget {
  const ourProjects({super.key, required this.text});

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Our projects', style: text.titleLarge),
          SizedBox(height: 15),
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Responsive(
              desktop: buildGrideView(
                text: text,
                childaspectratio: 0.75,
                itemcount: demoProjects.length,
                crossaxiscount: 3,
                itembuilder: (BuildContext context, int index) {
                  return projectCard(text: text, index: index);
                },
              ),
              tablet: buildGrideView(
                text: text,
                childaspectratio: 0.75,
                itemcount: demoProjects.length,
                crossaxiscount: MediaQuery.of(context).size.width < 900 ? 2 : 3,
                itembuilder: (BuildContext context, int index) {
                  return projectCard(text: text, index: index);
                },
              ),
              mobileLarge: buildGrideView(
                text: text,
                childaspectratio: 0.75,
                itemcount: demoProjects.length,
                crossaxiscount: 2,
                itembuilder: (BuildContext context, int index) {
                  return projectCard(text: text, index: index);
                },
              ),
              mobile: buildGrideView(
                text: text,
                childaspectratio: 0.75,
                itemcount: demoProjects.length,
                crossaxiscount: 1,
                itembuilder: (BuildContext context, int index) {
                  return projectCard(text: text, index: index);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
