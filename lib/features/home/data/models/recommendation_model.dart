import 'package:real_state_app/features/home/domain/entities/recommendation_entity.dart';

class RecommendationModel {
  final String name;
  final String image;
  final String source;
  final String text;

  const RecommendationModel({
    required this.name,
    required this.image,
    required this.source,
    required this.text,
  });

  factory RecommendationModel.fromMap(Map<String, String> map) {
    return RecommendationModel(
      name: map['name'] ?? '',
      image: map['image'] ?? '',
      source: map['source'] ?? '',
      text: map['text'] ?? '',
    );
  }

  RecommendationEntity toEntity() {
    return RecommendationEntity(
      name: name,
      image: image,
      source: source,
      text: text,
    );
  }
}
