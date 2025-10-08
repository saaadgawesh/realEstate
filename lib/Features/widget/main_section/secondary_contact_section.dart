
import 'package:flutter/material.dart';
import 'package:real_state_app/Core/resources/App_Color.dart';

class SeconderyContactSection extends StatelessWidget {
  const SeconderyContactSection({
    super.key,
    required this.text,
    required this.numbers,
    required this.icondata,
  });

  final TextTheme text;
  final String numbers;
  final IconData icondata;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icondata, color: AppColor.bgdarkcolor, size: 50),
        SizedBox(height: 10),
        Text(numbers, style: text.titleSmall),
      ],
    );
  }
}
