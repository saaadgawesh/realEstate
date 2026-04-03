import 'package:flutter/material.dart';
import 'package:real_state_app/features/home/presentation/view_models/home_view_model.dart';
import 'package:real_state_app/features/home/presentation/widgets/hero_banner.dart';
import 'package:real_state_app/features/home/presentation/widgets/projects_section.dart';
import 'package:real_state_app/features/home/presentation/widgets/recommendations_section.dart';
import 'package:real_state_app/features/home/presentation/widgets/stats_overview.dart';

class MainSection extends StatelessWidget {
  final HomeViewModel viewModel;

  const MainSection({super.key, required this.text, required this.viewModel});

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeBanner(text: text),
        const SizedBox(height: 25),
        StatsOverview(text: text),
        const SizedBox(height: 25),
        const Divider(),
        ProjectsSection(text: text, projects: viewModel.projects),
        const Divider(),
        const SizedBox(height: 25),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: RecommendationsSection(
            text: text,
            recommendations: viewModel.recommendations,
          ),
        ),
      ],
    );
  }
}
