import 'package:real_state_app/features/home/domain/entities/project_entity.dart';
import 'package:real_state_app/features/home/domain/entities/recommendation_entity.dart';

abstract class HomeRepository {
  List<ProjectEntity> getProjects();
  List<RecommendationEntity> getRecommendations();
}
