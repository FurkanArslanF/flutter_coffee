import 'package:coffee_app/product/utility/constants/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField(
      {super.key, required this.controller, required this.hintText, this.isPassword = false, this.titleText = ''});
  final TextEditingController controller;
  final String hintText;
  final bool isPassword;
  final String titleText;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isvisible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.titleText,
          style: context.general.textTheme.bodyMedium
              ?.copyWith(color: ColorConstants.greenColor, fontWeight: FontWeight.bold),
        ),
        Card(
          elevation: 3,
          shadowColor: ColorConstants.loginContainerColor,
          borderOnForeground: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22),
          ),
          child: TextField(
            controller: widget.controller,
            obscureText: widget.isPassword ? !isvisible : false,
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: const TextStyle(
                color: Colors.grey,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(22),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: ColorConstants.whiteColor,
              suffixIcon: widget.isPassword
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          isvisible = !isvisible;
                        });
                      },
                      icon: Icon(
                        !isvisible ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                        color: Colors.grey,
                      ),
                    )
                  : null,
            ),
          ),
        ),
      ],
    );
  }
}
