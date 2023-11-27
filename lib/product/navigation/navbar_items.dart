import 'package:coffee_app/view/error.dart';
import 'package:coffee_app/view/home/view/home.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class NavbarModel {
  NavbarModel._();
  static final instance = NavbarModel._();

  List<Widget> pages = [
    const HomeScreen(),
    const ErrorScreen(),
    const ErrorScreen(),
    const ErrorScreen(),
    const ErrorScreen(),
  ];

  List<PersistentBottomNavBarItem> navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
        icon: const Icon(
          Icons.house_outlined,
        ),
        title: "Home",
      ),
      PersistentBottomNavBarItem(
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
        icon: const Icon(
          Icons.qr_code,
        ),
        title: "Qr Code",
      ),
      PersistentBottomNavBarItem(
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
        icon: const Icon(
          Icons.coffee_outlined,
        ),
        title: "Order",
      ),
      PersistentBottomNavBarItem(
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
        icon: const Icon(
          Icons.star_border,
        ),
        title: "Reward",
      ),
      PersistentBottomNavBarItem(
        activeColorPrimary: Colors.blue,
        inactiveColorPrimary: Colors.grey,
        icon: const Icon(
          Icons.account_circle_rounded,
        ),
        title: "Account",
      ),
    ];
  }
}
