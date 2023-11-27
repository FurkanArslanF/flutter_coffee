import 'package:coffee_app/product/utility/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ColorContainer extends StatelessWidget {
  const ColorContainer({
    super.key,
    required this.height,
    this.stops = 0.5,
    this.child = const SizedBox(),
  });
  final double height;
  final Widget child;
  final double stops;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Container(
        height: height.w,
        width: 100.w,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: const [ColorConstants.freshMintColor, ColorConstants.whiteColor],
            stops: [stops, stops],
            end: Alignment.bottomCenter,
            begin: Alignment.topCenter,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: child,
      ),
    );
  }
}
