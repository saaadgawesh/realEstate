import 'package:flutter/material.dart';
import 'package:real_state_app/core/layout/responsive.dart';
import 'package:real_state_app/core/theme/app_colors.dart';
import 'package:real_state_app/core/theme/app_font_sizes.dart';
import 'package:real_state_app/features/home/domain/entities/recommendation_entity.dart';

class RecommendationsSection extends StatelessWidget {
  const RecommendationsSection({
    super.key,
    required this.text,
    required this.recommendations,
  });

  final TextTheme text;
  final List<RecommendationEntity> recommendations;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Responsive.isDesktop(context) ? 250 : 200,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: recommendations.length,
        itemBuilder: (context, index) {
          final recommendation = recommendations[index];

          return Container(
            width: Responsive.isDesktop(context) ? 450 : 300,
            height: Responsive.isDesktop(context) ? 250 : 120,
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppColors.surfaceLight,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(recommendation.image),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          recommendation.name,
                          style: text.titleLarge?.copyWith(
                            color: AppColors.backgroundDark,
                          ),
                        ),
                        Text(
                          recommendation.source,
                          style: text.titleMedium?.copyWith(
                            color: AppColors.backgroundDark,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  recommendation.text,
                  style: text.titleMedium?.copyWith(
                    fontSize: AppFontSizes.s14,
                    color: AppColors.backgroundDark,
                  ),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) => const SizedBox(width: 20),
      ),
    );
  }
}
