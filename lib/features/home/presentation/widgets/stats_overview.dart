import 'package:flutter/material.dart';
import 'package:real_state_app/core/layout/responsive.dart';
import 'package:real_state_app/core/theme/app_colors.dart';
import 'package:real_state_app/features/home/presentation/widgets/stat_item.dart';

class StatsOverview extends StatelessWidget {
  const StatsOverview({super.key, required this.text});

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      decoration: BoxDecoration(
        color: AppColors.surfaceLight,
        borderRadius: BorderRadius.circular(15),
      ),
      child:
          Responsive.isMobileLarge(context)
              ? Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: StatItem(
                          text: text,
                          numbers: '+87',
                          icondata: Icons.location_on,
                        ),
                      ),
                      Expanded(
                        child: StatItem(
                          text: text,
                          numbers: '+139',
                          icondata: Icons.facebook,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: StatItem(
                          text: text,
                          numbers: '+30',
                          icondata: Icons.phone,
                        ),
                      ),
                      Expanded(
                        child: StatItem(
                          text: text,
                          numbers: '+13k',
                          icondata: Icons.location_on,
                        ),
                      ),
                    ],
                  ),
                ],
              )
              : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  StatItem(
                    text: text,
                    numbers: '+87',
                    icondata: Icons.location_on,
                  ),
                  StatItem(
                    text: text,
                    numbers: '+139',
                    icondata: Icons.location_on,
                  ),
                  StatItem(
                    text: text,
                    numbers: '+30',
                    icondata: Icons.location_on,
                  ),
                  StatItem(
                    text: text,
                    numbers: '+13k',
                    icondata: Icons.location_on,
                  ),
                ],
              ),
    );
  }
}
