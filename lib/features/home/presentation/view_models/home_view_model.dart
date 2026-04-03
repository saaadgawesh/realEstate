import 'package:real_state_app/features/home/domain/entities/project_entity.dart';
import 'package:real_state_app/features/home/domain/entities/recommendation_entity.dart';
import 'package:real_state_app/features/home/domain/usecases/get_projects_use_case.dart';
import 'package:real_state_app/features/home/domain/usecases/get_recommendations_use_case.dart';

class HomeViewModel {
  final GetProjectsUseCase getProjectsUseCase;
  final GetRecommendationsUseCase getRecommendationsUseCase;

  const HomeViewModel({
    required this.getProjectsUseCase,
    required this.getRecommendationsUseCase,
  });

  List<ProjectEntity> get projects => getProjectsUseCase();

  List<RecommendationEntity> get recommendations => getRecommendationsUseCase();
}
