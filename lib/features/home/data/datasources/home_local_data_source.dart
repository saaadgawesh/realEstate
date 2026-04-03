import 'package:real_state_app/features/home/data/models/project_model.dart';
import 'package:real_state_app/features/home/data/models/recommendation_model.dart';

class HomeLocalDataSource {
  const HomeLocalDataSource();

  List<ProjectModel> getProjects() {
    return _projectMaps.map(ProjectModel.fromMap).toList();
  }

  List<RecommendationModel> getRecommendations() {
    return _recommendationMaps.map(RecommendationModel.fromMap).toList();
  }
}

const List<Map<String, String>> _projectMaps = [
  {
    'title': 'A fresh start with our houses',
    'image': 'assets/images/project-01.jpg',
    'description':
        'Lorem ipsum dolor sit amet, facilis admodum officiis est te, enim antiopam similique ut vis. Veri repudiare per cu. Et labitur maiorum officiis eos, ad doming malorum facilis mel, necessitatibus pro, vix ad quo, id equidem expetenda mel, audire aeterno ne vel. In omnium aliquam complectitur sea, eam illud legendos voluptaria.',
  },
  {
    'title': 'Great locations to create modern living',
    'image': 'assets/images/project-02.jpg',
    'description':
        'Enim antiopam similique ut vis. Veri repudiare per cu. Et labitur maiorum officiis eos, ad doming malorum facilis mel, necessitatibus pro, vix ad quo, id equidem expetenda mel, audire aeterno ne vel. In omnium aliquam complectitur sea, eam illud legendos voluptaria.',
  },
  {
    'title': 'Private residental 3rd floor',
    'image': 'assets/images/project-03.jpg',
    'description':
        'Facilis admodum officiis est te, Lorem ipsum dolor sit amet, enim antiopam similique ut vis. Veri repudiare per cu. Et labitur maiorum officiis eos, ad doming malorum facilis mel, necessitatibus pro, vix ad quo, id equidem expetenda mel, audire aeterno ne vel. In omnium aliquam complectitur sea, eam illud legendos voluptaria.',
  },
  {
    'title': 'Our interior design',
    'image': 'assets/images/project-04.jpg',
    'description':
        'Veri repudiare per cu. Et labitur maiorum officiis eos, Lorem ipsum dolor sit amet, facilis admodum officiis est te, enim antiopam similique ut vis. ad doming malorum facilis mel, necessitatibus pro, vix ad quo, id equidem expetenda mel, audire aeterno ne vel. In omnium aliquam complectitur sea, eam illud legendos voluptaria.',
  },
  {
    'title': 'Open space and bright colors',
    'image': 'assets/images/project-05.jpg',
    'description':
        'Et labitur maiorum officiis eos, Veri repudiare per cu. ad doming malorum facilis mel, necessitatibus pro, vix ad quo, id equidem expetenda mel, audire aeterno ne vel. In omnium aliquam complectitur sea, eam illud legendos voluptaria.',
  },
  {
    'title': 'Simple and clean interior design',
    'image': 'assets/images/project-06.jpg',
    'description':
        'In omnium aliquam complectitur sea, eam illud legendos voluptaria. Lorem ipsum dolor sit amet, facilis admodum officiis est te, enim antiopam similique ut vis. Veri repudiare per cu. Et labitur maiorum officiis eos, ad doming malorum facilis mel, necessitatibus pro, vix ad quo, id equidem expetenda mel, audire aeterno ne vel.',
  },
];

const List<Map<String, String>> _recommendationMaps = [
  {
    'name': 'Simeon Cox',
    'image': 'assets/images/client-01.jpg',
    'source': 'Skyscrapers',
    'text':
        'Lorem ipsum dolor sit amet, facilis admodum officiis est te, enim antiopam similique ut vis. Veri repudiare per cu. Et labitur maiorum officiis eos, ad doming malorum facilis mel, sanctus corpora sea at.',
  },
  {
    'name': 'Jake Hooper',
    'image': 'assets/images/client-02.jpg',
    'source': 'Offices',
    'text':
        'Enim antiopam similique ut vis. Veri repudiare per cu. ad doming malorum facilis mel, sanctus corpora sea at. Ut ponderum delicata necessitatibus pro, ea vim denique complectitur. Eligendi molestiae in quo, id equidem expetenda mel, audire aeterno ne vel. Affert explicari per ut. In omnium aliquam complectitur sea, eam illud legendos voluptaria.',
  },
  {
    'name': 'Eden Welch',
    'image': 'assets/images/client-03.jpg',
    'source': 'Green House',
    'text':
        'Veri repudiare per cu. Et labitur maiorum officiis eos, ad doming malorum facilis mel, sanctus corpora sea at. Ut ponderum delicata necessitatibus pro, affert explicari per ut. In omnium aliquam complectitur sea, eam illud legendos voluptaria.',
  },
  {
    'name': 'Alexandra Rush',
    'image': 'assets/images/client-01.jpg',
    'source': 'Modern House',
    'text':
        'Vix ad erant choro. Eligendi molestiae in quo, id equidem expetenda mel, audire aeterno ne vel. Affert explicari per ut. In omnium aliquam complectitur sea, eam illud legendos voluptaria.',
  },
];
