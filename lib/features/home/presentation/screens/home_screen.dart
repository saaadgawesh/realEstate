import 'package:flutter/material.dart';
import 'package:real_state_app/core/layout/responsive.dart';
import 'package:real_state_app/core/theme/app_colors.dart';
import 'package:real_state_app/features/home/presentation/widgets/main_section.dart';
import 'package:real_state_app/features/home/presentation/widgets/side_menu_section.dart';
import 'package:real_state_app/features/home/presentation/view_models/home_view_model.dart';

class HomeScreen extends StatelessWidget {
  final HomeViewModel viewModel;

  const HomeScreen({super.key, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    final text = Theme.of(context).textTheme;

    return Scaffold(
      appBar:
          Responsive.isDesktop(context)
              ? null
              : AppBar(
                backgroundColor: AppColors.backgroundDark,
                leading: Builder(
                  builder:
                      (context) => IconButton(
                        icon: const Icon(Icons.menu, color: AppColors.white),
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                      ),
                ),
              ),
      drawer: SideMenuSection(text: text),
      body: Row(
        children: [
          if (Responsive.isDesktop(context))
            Expanded(
              flex: 3,
              child: Container(
                color: AppColors.backgroundDark,
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [SideMenuSection(text: text)],
                ),
              ),
            ),
          Expanded(
            flex: 7,
            child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(15),
                  color: AppColors.backgroundDark,
                  child: MainSection(text: text, viewModel: viewModel),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
