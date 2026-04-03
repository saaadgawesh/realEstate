import 'package:real_state_app/features/home/domain/entities/recommendation_entity.dart';
import 'package:real_state_app/features/home/domain/repositories/home_repository.dart';

class GetRecommendationsUseCase {
  final HomeRepository repository;

  const GetRecommendationsUseCase(this.repository);

  List<RecommendationEntity> call() {
    return repository.getRecommendations();
  }
}
