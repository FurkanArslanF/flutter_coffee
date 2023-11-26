import 'package:coffee_app/product/utility/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class BoldAndNormalText extends StatelessWidget {
  const BoldAndNormalText(
      {super.key, required this.boldText, required this.normalText, this.color = ColorConstants.brownColor});
  final String boldText;
  final String normalText;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          boldText,
          style: context.general.textTheme.headlineLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        context.sized.emptySizedHeightBoxLow,
        Text(
          normalText,
          style: TextStyle(
            color: color,
          ),
        ),
      ],
    );
  }
}
