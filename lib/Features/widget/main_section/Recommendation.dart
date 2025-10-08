import 'package:flutter/material.dart';
import 'package:real_state_app/Core/resources/App_Color.dart';
import 'package:real_state_app/Core/resources/App_FontSize.dart';
import 'package:real_state_app/models/recommendation.dart';

class RecomendationWidget extends StatelessWidget {
  const RecomendationWidget({super.key, required this.text});

  final TextTheme text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      width: MediaQuery.of(context).size.width,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,

        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: demoRecommendations.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 450,
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppColor.bgiconcolor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        demoRecommendations[index].image ?? '',
                      ),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          demoRecommendations[index].name ?? '',
                          style: text.titleLarge?.copyWith(
                            color: AppColor.bgdarkcolor,
                          ),
                        ),
                        Text(
                          demoRecommendations[index].source ?? '',
                          style: text.titleMedium?.copyWith(
                            color: AppColor.bgdarkcolor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                // ListTile(
                //   leading: CircleAvatar(
                //     backgroundImage: AssetImage(
                //       demoRecommendations[index].image ?? '',
                //     ),
                //   ),
                //   title: Text(
                //     demoRecommendations[index].name ?? '',
                //     style: text.titleLarge?.copyWith(
                //       color: AppColor.bgdarkcolor,
                //     ),
                //   ),
                //   subtitle: Text(
                //     demoRecommendations[index].source ?? '',
                //     style: text.titleMedium?.copyWith(
                //       color: AppColor.bgdarkcolor,
                //     ),
                //   ),
                // ),
                const SizedBox(height: 10),
                Text(
                  demoRecommendations[index].text ?? '',
                  style: text.titleMedium?.copyWith(
                    fontSize: AppFontsize.s14,
                    color: AppColor.bgdarkcolor,
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
