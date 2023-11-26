import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Logo extends StatelessWidget {
  const Logo({super.key, this.width = 15, this.top = 15});
  final double width;
  final double top;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top.w,
      left: MediaQuery.of(context).size.width / 2 - 7.5.w,
      child: Image.asset(
        'assets/logo.png',
        width: width.w,
      ),
    );
  }
}
