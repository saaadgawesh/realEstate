import 'package:real_state_app/features/home/domain/entities/project_entity.dart';
import 'package:real_state_app/features/home/domain/repositories/home_repository.dart';

class GetProjectsUseCase {
  final HomeRepository repository;

  const GetProjectsUseCase(this.repository);

  List<ProjectEntity> call() {
    return repository.getProjects();
  }
}
