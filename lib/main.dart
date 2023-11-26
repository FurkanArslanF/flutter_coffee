import 'package:coffee_app/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp.router(
          title: 'Coffee App',
          debugShowCheckedModeBanner: false,
          routeInformationProvider: RouterManager.instance.router.routeInformationProvider,
          routeInformationParser: RouterManager.instance.router.routeInformationParser,
          routerDelegate: RouterManager.instance.router.routerDelegate,
          theme: ThemeData(
            appBarTheme: const AppBarTheme(
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.transparent,
                statusBarIconBrightness: Brightness.dark,
              ),
            ),
          ),
        );
      },
    );
  }
}
