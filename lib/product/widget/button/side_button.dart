import 'package:coffee_app/product/utility/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class SideButton extends StatelessWidget {
  const SideButton({super.key, required this.text, required this.onPressed});
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 3,
        surfaceTintColor: Colors.white,
        shadowColor: Colors.black,
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: ColorConstants.greenColor, width: 2),
          borderRadius: BorderRadius.circular(22),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: context.general.textTheme.bodyMedium?.copyWith(
          color: ColorConstants.greenColor,
        ),
      ),
    );
  }
}
