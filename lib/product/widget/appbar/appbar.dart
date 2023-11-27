import 'package:coffee_app/product/utility/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 3,
      shadowColor: Colors.black,
      surfaceTintColor: ColorConstants.mainBgColor,
      title: Image.asset(
        'assets/logo.png',
        width: 7.w,
      ),
      centerTitle: true,
      actions: [
        Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_bag_outlined, size: 8.w),
            ),
            Positioned(
              top: 2.w,
              right: 0,
              left: 4.w,
              child: Container(
                width: 5.h,
                height: 5.w,
                decoration: BoxDecoration(
                  color: Colors.green.shade800,
                  shape: BoxShape.circle,
                ),
                child: const Center(
                  child: Text(
                    '0',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
