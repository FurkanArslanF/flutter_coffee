import 'package:coffee_app/product/utility/constants/color_constants.dart';
import 'package:coffee_app/product/utility/constants/image_constants.dart';
import 'package:coffee_app/product/widget/button/normal_button.dart';
import 'package:coffee_app/product/widget/button/side_button.dart';
import 'package:coffee_app/product/widget/container/color_container.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:sizer/sizer.dart';

class RewardBanner extends StatelessWidget {
  const RewardBanner({super.key, this.isGuest = false});
  final bool isGuest;

  @override
  Widget build(BuildContext context) {
    return isGuest
        ? ColorContainer(
            height: 20.w,
            stops: 0.6,
            child: Column(
              children: [
                context.sized.emptySizedHeightBoxLow,
                Padding(
                  padding: context.padding.horizontalLow,
                  child: Text(
                    "Join the Rewards program to enjoy free beverages, special offers and more!",
                    textAlign: TextAlign.center,
                    style: context.general.textTheme.bodyLarge?.copyWith(
                      fontSize: 14.sp,
                      color: ColorConstants.whiteColor,
                    ),
                  ),
                ),
                context.sized.emptySizedHeightBoxLow3x,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 14.w,
                      width: 35.w,
                      child: NormalButton(text: "JOIN NOW", onPressed: () {}),
                    ),
                    SizedBox(
                      height: 14.w,
                      width: 35.w,
                      child: NormalButton(
                        text: "GUEST ORDER",
                        onPressed: () {},
                        color: ColorConstants.creamyLatteColor,
                        textColor: ColorConstants.brownColor,
                      ),
                    ),
                  ],
                ),
                context.sized.emptySizedHeightBoxNormal,
                Text(
                  "Already have an account?",
                  style: context.general.textTheme.bodyLarge?.copyWith(
                    fontSize: 12.sp,
                  ),
                ),
                context.sized.emptySizedHeightBoxLow,
                SizedBox(
                  height: 14.w,
                  width: 80.w,
                  child: SideButton(
                    text: "GUEST ORDER",
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          )
        : ColorContainer(
            height: 55,
            stops: 0.35,
            child: Padding(
              padding: context.padding.low,
              child: Stack(
                children: [
                  Align(
                      alignment: Alignment.topRight,
                      child: ImageConstants.instance.load(ImageConstants.instance.homeReward)),
                  Align(alignment: Alignment.bottomRight, child: NormalButton(text: "Shop Now", onPressed: () {})),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      context.sized.emptySizedHeightBoxLow,
                      Text(
                        "BONUS REWARD",
                        style: context.general.textTheme.bodySmall?.copyWith(
                          color: ColorConstants.whiteColor,
                        ),
                      ),
                      context.sized.emptySizedHeightBoxLow,
                      Text(
                        "Coffee Delivered to your house",
                        style: context.general.textTheme.bodyLarge?.copyWith(
                          color: ColorConstants.whiteColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      context.sized.emptySizedHeightBoxLow3x,
                      Text(
                        "Order 2 bags of coffee and get bonus stars!",
                        style: context.general.textTheme.bodySmall?.copyWith(
                          color: ColorConstants.blackColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      context.sized.emptySizedHeightBoxLow,
                      SizedBox(
                        width: 60.w,
                        child: Text(
                          "Order any of our coffee and get an additional 30 Stars! Now that’s how you get free coffee!",
                          style: context.general.textTheme.bodyMedium?.copyWith(
                            color: ColorConstants.blackColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
  }
}
