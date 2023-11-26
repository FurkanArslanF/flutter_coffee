import 'package:coffee_app/product/utility/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LoginContainer extends StatelessWidget {
  const LoginContainer({super.key, required this.child, this.margin = EdgeInsets.zero, this.height = 100, this.width = 100, this.childPadding = EdgeInsets.zero});
  final Widget child;
  final EdgeInsetsGeometry margin;
  final double height;
  final double width;
  final EdgeInsetsGeometry childPadding;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: height.h,
      width: width.w,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 1,
            offset: Offset(0, -4),
          ),
        ],
        color: ColorConstants.loginContainerColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(34),
          topRight: Radius.circular(34),
        ),
      ),
      child: Padding(
        padding: childPadding,
        child: child,
      ),
    );
  }
}
