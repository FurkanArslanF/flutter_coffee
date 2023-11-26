import 'package:coffee_app/product/utility/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class NormalButton extends StatelessWidget {
  const NormalButton({super.key, required this.text, required this.onPressed});
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22),
        ),
        backgroundColor: ColorConstants.brownColor,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: context.general.textTheme.bodyMedium?.copyWith(
          color: ColorConstants.whiteColor,
        ),
      ),
    );
  }
}
