import 'package:coffee_app/product/utility/constants/color_constants.dart';
import 'package:coffee_app/product/widget/appbar/appbar.dart';
import 'package:coffee_app/product/widget/text/bold_and_normal_text.dart';
import 'package:coffee_app/view/home/widget/reward_banner.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(),
      body: Padding(
        padding: context.padding.horizontalNormal + context.padding.onlyTopNormal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BoldAndNormalText(
              fontSizeBold: 14,
              fontSizeNormal: 14,
              boldText: "Good Morning!",
              normalText: "Login and get free ☕️ ",
              color: ColorConstants.blackColor,
            ),
            context.sized.emptySizedHeightBoxLow3x,
            const RewardBanner(isGuest: false),
          ],
        ),
      ),
    );
  }
}
