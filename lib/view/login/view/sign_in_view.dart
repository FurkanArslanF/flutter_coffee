import 'package:coffee_app/product/utility/constants/color_constants.dart';
import 'package:coffee_app/product/utility/constants/text_constants.dart';
import 'package:coffee_app/product/widget/button/normal_button.dart';
import 'package:coffee_app/product/widget/container/login_container.dart';
import 'package:coffee_app/product/widget/logo.dart';
import 'package:coffee_app/product/widget/sizedbox/custom_sizedbox.dart';
import 'package:coffee_app/product/widget/text/bold_and_normal_text.dart';
import 'package:coffee_app/product/widget/textfield/custom_textfield.dart';
import 'package:coffee_app/view/login/widget/dont_have_account.dart';
import 'package:coffee_app/view/login/widget/password_reset.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:sizer/sizer.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key});

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: ColorConstants.loginBgColor,
      body: Stack(
        children: [Logo(), _MainWidget()],
      ),
    );
  }
}

class _MainWidget extends StatefulWidget {
  const _MainWidget();

  @override
  State<_MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<_MainWidget> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return LoginContainer(
      margin: EdgeInsets.only(top: 20.h),
      childPadding: context.padding.onlyTopMedium + context.padding.horizontalMedium,
      child: Column(
        children: [
          const BoldAndNormalText(
            boldText: TextConstants.signInBoldTitle,
            normalText: TextConstants.signInNormalTitle,
          ),
          context.sized.emptySizedHeightBoxLow3x,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Form(
                key: _key,
                child: Column(
                  children: [
                    CustomTextField(
                        controller: _usernameController,
                        hintText: TextConstants.usernamehintText,
                        titleText: TextConstants.usernameTitle),
                    context.sized.emptySizedHeightBoxLow3x,
                    CustomTextField(
                        controller: _passwordController,
                        hintText: TextConstants.passwordhintText,
                        isPassword: true,
                        titleText: TextConstants.passwordTitle),
                    context.sized.emptySizedHeightBoxLow3x,
                  ],
                ),
              ),
              CustomSizedBox(
                child: NormalButton(
                  onPressed: () {
                    if (_key.currentState!.validate()) {
                      debugPrint('Username: ${_usernameController.text}');
                      debugPrint('Password: ${_passwordController.text}');
                    }
                  },
                  text: TextConstants.loginButtonTitle,
                ),
              ),
              context.sized.emptySizedHeightBoxHigh,
              const PasswordReset(),
              context.sized.emptySizedHeightBoxLow,
              const DontHaveAccount(),
              context.sized.emptySizedHeightBoxLow3x,
              CustomSizedBox(
                child: NormalButton(
                  onPressed: () {
                    debugPrint('Create new account');
                  },
                  text: TextConstants.createButtonTitle,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
