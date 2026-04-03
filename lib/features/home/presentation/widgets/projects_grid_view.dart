import 'package:flutter/material.dart';

class ProjectsGridView extends StatelessWidget {
  const ProjectsGridView({
    super.key,
    required this.childaspectratio,
    required this.itemcount,
    required this.crossaxiscount,
    required this.itembuilder,
  });

  final double childaspectratio;
  final int itemcount;
  final int crossaxiscount;
  final IndexedWidgetBuilder itembuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossaxiscount,
        childAspectRatio: childaspectratio,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
      ),
      itemCount: itemcount,
      itemBuilder: itembuilder,
    );
  }
}
