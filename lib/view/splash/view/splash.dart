import 'package:coffee_app/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  void _waitAndNavigate() async {
    await Future.delayed(const Duration(seconds: 3), () {
      context.go(RouterManager.home);
    });
  }

  @override
  void initState() {
    super.initState();
    _waitAndNavigate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        child: Stack(
          children: [
            Image.asset(
              "assets/splash/bg.png",
              fit: BoxFit.cover,
              width: 100.w,
              height: 100.h,
            ),
            Center(
              child: Image.asset(
                'assets/logo.png',
                width: 35.w,
              ),
            )
          ],
        ),
      ),
    );
  }
}
