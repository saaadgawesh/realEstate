import 'package:real_state_app/features/home/data/datasources/home_local_data_source.dart';
import 'package:real_state_app/features/home/data/repositories/home_repository_impl.dart';
import 'package:real_state_app/features/home/domain/usecases/get_projects_use_case.dart';
import 'package:real_state_app/features/home/domain/usecases/get_recommendations_use_case.dart';
import 'package:real_state_app/features/home/presentation/view_models/home_view_model.dart';

HomeViewModel buildHomeViewModel() {
  const localDataSource = HomeLocalDataSource();
  const repository = HomeRepositoryImpl(localDataSource: localDataSource);

  return HomeViewModel(
    getProjectsUseCase: GetProjectsUseCase(repository),
    getRecommendationsUseCase: GetRecommendationsUseCase(repository),
  );
}
