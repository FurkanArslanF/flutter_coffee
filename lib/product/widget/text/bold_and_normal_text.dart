import 'package:coffee_app/product/utility/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:sizer/sizer.dart';

class BoldAndNormalText extends StatelessWidget {
  const BoldAndNormalText(
      {super.key,
      required this.boldText,
      required this.normalText,
      this.color = ColorConstants.brownColor,
      this.fontSizeBold = 24,
      this.fontSizeNormal = 12});
  final String boldText;
  final String normalText;
  final Color color;
  final double fontSizeBold;
  final double fontSizeNormal;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          boldText,
          style: context.general.textTheme.headlineLarge?.copyWith(
            fontSize: fontSizeBold.sp,
            fontWeight: FontWeight.bold,
            color: color,
          ),
        ),
        //context.sized.emptySizedHeightBoxLow,
        Text(
          normalText,
          style: TextStyle(
            fontSize: fontSizeNormal.sp,
            color: color,
          ),
        ),
      ],
    );
  }
}
