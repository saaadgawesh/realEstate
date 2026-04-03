import 'package:real_state_app/features/home/domain/entities/project_entity.dart';

class ProjectModel {
  final String title;
  final String image;
  final String description;

  const ProjectModel({
    required this.title,
    required this.image,
    required this.description,
  });

  factory ProjectModel.fromMap(Map<String, String> map) {
    return ProjectModel(
      title: map['title'] ?? '',
      image: map['image'] ?? '',
      description: map['description'] ?? '',
    );
  }

  ProjectEntity toEntity() {
    return ProjectEntity(
      title: title,
      image: image,
      description: description,
    );
  }
}
