import 'package:coffee_app/product/utility/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:sizer/sizer.dart';

class TitleAndButton extends StatelessWidget {
  const TitleAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Drinks",
          style: context.general.textTheme.bodyLarge?.copyWith(
            color: ColorConstants.blackColor,
            fontWeight: FontWeight.bold,
            fontSize: 16.sp,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            "See all",
            style: context.general.textTheme.bodyMedium?.copyWith(
              color: ColorConstants.greenColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
