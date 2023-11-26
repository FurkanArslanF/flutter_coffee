import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomSizedBox extends StatelessWidget {
  const CustomSizedBox({super.key, required this.child, this.height = 14});
  final Widget child;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height.w,
      child: child,
    );
  }
}
