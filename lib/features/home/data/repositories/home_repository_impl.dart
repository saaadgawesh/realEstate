import 'package:real_state_app/features/home/data/datasources/home_local_data_source.dart';
import 'package:real_state_app/features/home/domain/entities/project_entity.dart';
import 'package:real_state_app/features/home/domain/entities/recommendation_entity.dart';
import 'package:real_state_app/features/home/domain/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeLocalDataSource localDataSource;

  const HomeRepositoryImpl({required this.localDataSource});

  @override
  List<ProjectEntity> getProjects() {
    return localDataSource.getProjects().map((model) => model.toEntity()).toList();
  }

  @override
  List<RecommendationEntity> getRecommendations() {
    return localDataSource
        .getRecommendations()
        .map((model) => model.toEntity())
        .toList();
  }
}
