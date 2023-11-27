// import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class ImageConstants {
  ImageConstants._();
  static ImageConstants instance = ImageConstants._();

  String splashBg = "assets/splash/bg.png";
  String splashLogo = "assets/splash/bg.png";
  String homeReward = "assets/home/rewardcoffee.png";
  String homeUser = "assets/home/user.png";

  String coldCoffes = "assets/coffee/cold_coffes.png";
  String coldDrinks = "assets/coffee/cold_drinks.png";
  String frappucino = "assets/coffee/frappucino.png";
  String hotCoffes = "assets/coffee/hot_coffees.png";
  String hotDrinks = "assets/coffee/hot_drinks.png";
  String icedTea = "assets/coffee/iced_teas.png";
  String hotTea = "assets/coffee/hot_teas.png";


}

extension ImageConstantsExtension on ImageConstants {
  Widget load(String path) {
    return Image.asset(path);
  }
}
