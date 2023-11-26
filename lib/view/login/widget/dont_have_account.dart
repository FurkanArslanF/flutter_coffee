import 'package:coffee_app/product/utility/constants/text_constants.dart';
import 'package:flutter/material.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          TextConstants.dontHaveAccountTitle,
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
