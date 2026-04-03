import 'package:flutter/material.dart';
import 'package:real_state_app/core/layout/responsive.dart';
import 'package:real_state_app/features/home/domain/entities/project_entity.dart';
import 'package:real_state_app/features/home/presentation/widgets/project_card.dart';
import 'package:real_state_app/features/home/presentation/widgets/projects_grid_view.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key, required this.text, required this.projects});

  final TextTheme text;
  final List<ProjectEntity> projects;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Our projects', style: text.titleLarge),
          const SizedBox(height: 15),
          Responsive(
            desktop: ProjectsGridView(
              childaspectratio: 0.75,
              itemcount: projects.length,
              crossaxiscount: 3,
              itembuilder: (context, index) {
                return ProjectCard(text: text, project: projects[index]);
              },
            ),
            tablet: ProjectsGridView(
              childaspectratio: 0.75,
              itemcount: projects.length,
              crossaxiscount: MediaQuery.of(context).size.width < 900 ? 2 : 3,
              itembuilder: (context, index) {
                return ProjectCard(text: text, project: projects[index]);
              },
            ),
            mobileLarge: ProjectsGridView(
              childaspectratio: 0.75,
              itemcount: projects.length,
              crossaxiscount: 2,
              itembuilder: (context, index) {
                return ProjectCard(text: text, project: projects[index]);
              },
            ),
            mobile: ProjectsGridView(
              childaspectratio: 0.75,
              itemcount: projects.length,
              crossaxiscount: 1,
              itembuilder: (context, index) {
                return ProjectCard(text: text, project: projects[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
