import 'package:coffee_app/product/utility/constants/color_constants.dart';
import 'package:coffee_app/product/utility/constants/image_constants.dart';
import 'package:coffee_app/product/widget/appbar/appbar.dart';
import 'package:coffee_app/product/widget/text/bold_and_normal_text.dart';
import 'package:coffee_app/view/home/widget/drinks_list.dart';
import 'package:coffee_app/view/home/widget/title_and_button.dart';
import 'package:coffee_app/view/home/widget/reward_banner.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: context.padding.horizontalNormal + context.padding.onlyTopNormal,
          child: _MainWidget(),
        ),
      ),
    );
  }
}

class _MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const isGuest = true;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const BoldAndNormalText(
              fontSizeBold: 14,
              fontSizeNormal: 14,
              boldText: "Good Morning!",
              normalText: "Login and get free ☕️ ",
              color: ColorConstants.blackColor,
            ),
            !isGuest
                ? SizedBox(
                    //color: Colors.red,
                    width: 15.w,
                    child: ImageConstants.instance.load(ImageConstants.instance.homeUser),
                  )
                : const Center(),
          ],
        ),
        context.sized.emptySizedHeightBoxLow3x,
        const RewardBanner(isGuest: isGuest),
        context.sized.emptySizedHeightBoxLow3x,
        const TitleAndButton(),
        SizedBox(
          width: 100.w,
          height: 150.w,
          child: const DrinksList(),
        ),
      ],
    );
  }
}
