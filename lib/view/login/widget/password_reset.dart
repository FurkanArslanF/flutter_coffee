import 'package:coffee_app/product/utility/constants/color_constants.dart';
import 'package:coffee_app/product/utility/constants/text_constants.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class PasswordReset extends StatelessWidget {
  const PasswordReset({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          TextConstants.forgotPasswordTitle,
          style: context.general.textTheme.bodyMedium?.copyWith(color: ColorConstants.greenColor),
        ),
        context.sized.emptySizedWidthBoxLow3x,
        Text(
          TextConstants.resetHereTitle,
          style: context.general.textTheme.bodyMedium
              ?.copyWith(color: ColorConstants.brownColor, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
