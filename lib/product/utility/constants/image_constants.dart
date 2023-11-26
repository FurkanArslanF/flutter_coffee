// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class ImageConstants {
  ImageConstants._();
  static ImageConstants instance = ImageConstants._();

  String splashBg = "assets/splash/bg.png";
  String splashLogo = "assets/splash/bg.png";
}

extension ImageConstantsExtension on ImageConstants {
  void load(BuildContext context) {
    Image.asset(splashBg);
  }
}
