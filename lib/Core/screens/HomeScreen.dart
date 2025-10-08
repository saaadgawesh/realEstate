import 'package:flutter/material.dart';
import 'package:real_state_app/Core/resources/App_Color.dart';
import 'package:real_state_app/Features/widget/main_section/mainSection.dart';
import 'package:real_state_app/Features/widget/side_menu_section/sideMenuSection.dart';
import 'package:real_state_app/responsive.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;
    return Scaffold(
      appBar:
          Responsive.isDesktop(context)
              ? null
              : AppBar(
                backgroundColor: AppColor.bgdarkcolor,
                leading: Builder(
                  builder:
                      (context) => IconButton(
                        icon: Icon(Icons.menu, color: AppColor.whitecolor),
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                      ),
                ),
              ),
      drawer: sideMenuSection(text: text),
      body: Row(
        children: [
          if (Responsive.isDesktop(context))
            Expanded(
              flex: 3,
              child: Container(
                color: AppColor.bgdarkcolor,
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [sideMenuSection(text: text)],
                ),
              ),
            ),
          Expanded(
            flex: 7,
            child: SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(15),
                color: AppColor.bgdarkcolor,
                child: mainSection(text: text),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
