import 'package:coffee_app/product/utility/constants/color_constants.dart';
import 'package:coffee_app/product/utility/constants/image_constants.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:sizer/sizer.dart';

class DrinksList extends StatefulWidget {
  const DrinksList({super.key});

  @override
  State<DrinksList> createState() => _DrinksListState();
}

class _DrinksListState extends State<DrinksList> {
  final List<Map<Widget, String>> _drinks = [
    {ImageConstants.instance.load(ImageConstants.instance.hotCoffes): "Hot Coffes"},
    {ImageConstants.instance.load(ImageConstants.instance.hotTea): "Hot Teas"},
    {ImageConstants.instance.load(ImageConstants.instance.hotDrinks): "Hot Drinks"},
    {ImageConstants.instance.load(ImageConstants.instance.frappucino): "Frappucino"},
    {ImageConstants.instance.load(ImageConstants.instance.coldCoffes): "Cold Coffes"},
    {ImageConstants.instance.load(ImageConstants.instance.icedTea): "Iced Teas"},
    {ImageConstants.instance.load(ImageConstants.instance.coldDrinks): "Cold Drinks"},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      //padding: context.padding.onlyBottomHigh,
      itemCount: _drinks.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, childAspectRatio: 0.7),
      itemBuilder: (context, index) {
        return InkWell(
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          onTap: () {
            debugPrint("Tapped $index");
          },
          child: Card(
            surfaceTintColor: ColorConstants.whiteColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 25.w, child: _drinks[index].keys.first),
                Text(
                  _drinks[index].values.first,
                  style: context.general.textTheme.bodyMedium?.copyWith(
                    color: ColorConstants.blackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
