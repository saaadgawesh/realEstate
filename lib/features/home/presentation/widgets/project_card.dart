import 'package:flutter/material.dart';
import 'package:real_state_app/core/layout/responsive.dart';
import 'package:real_state_app/core/theme/app_colors.dart';
import 'package:real_state_app/core/theme/app_font_sizes.dart';
import 'package:real_state_app/features/home/domain/entities/project_entity.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({super.key, required this.text, required this.project});

  final TextTheme text;
  final ProjectEntity project;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surfaceLight,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(project.image),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              project.title,
              style:
                  Responsive.isDesktop(context)
                      ? text.titleLarge?.copyWith(
                        color: AppColors.backgroundDark,
                      )
                      : text.titleLarge?.copyWith(
                        fontSize: AppFontSizes.s14,
                        color: AppColors.backgroundDark,
                      ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              project.description,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: text.titleLarge?.copyWith(
                color: AppColors.backgroundDark,
              ),
            ),
          ),
          ElevatedButton(onPressed: () {}, child: const Text('View More')),
        ],
      ),
    );
  }
}
