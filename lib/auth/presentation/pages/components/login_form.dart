import 'package:build_pc_mobile/auth/presentation/pages/components/or_divider.dart';
import 'package:build_pc_mobile/auth/presentation/widgets/already_have_an_account_check.dart';
import 'package:build_pc_mobile/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:build_pc_mobile/common/constants/app_sizes.dart';
import 'package:build_pc_mobile/common/presentation/navigation/route_names.dart';
import 'package:build_pc_mobile/common/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const SizedBox(height: AppSizes.defaultPadding),
          const CustomTextFormField(
            labelText: 'Email',
            hintText: 'Email',
            keyboardType: TextInputType.emailAddress,
            checkSuffixIcon: false,
          ),
          const CustomTextFormField(
            labelText: 'Password',
            hintText: 'Password',
            keyboardType: TextInputType.visiblePassword,
            checkSuffixIcon: true,
          ),
          const SizedBox(height: AppSizes.defaultPadding),
          const CustomButtonWidget(
            fromSTEBStart: 0,
            fromSTEBTop: 0,
            fromSTEBEnd: 0,
            fromSTEBBottom: 20,
            heightContainer: 60,
            borderRadius: 25,
            routeName: RouteNames.registerPage,
            nameButton: 'Log In',
            colorButton: AppColors.primaryColor,
            fontSizeButton: 22.0,
            colorTextButton: AppColors.tertiaryColor,
          ),
          const SizedBox(height: AppSizes.defaultPadding),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.pushNamed(context, RouteNames.registerPage);
            },
          ),
          const OrDivider(),
          const CustomButtonWidget(
            fromSTEBStart: 45,
            fromSTEBTop: 0,
            fromSTEBEnd: 45,
            fromSTEBBottom: 20,
            heightContainer: 60,
            borderRadius: 25,
            routeName: RouteNames.homePage,
            nameButton: 'Continue as Guest',
            colorButton: AppDarkColors.primaryBackgroundDarkColor,
            fontSizeButton: 22.0,
            colorTextButton: AppColors.tertiaryColor,
          ),
        ],
      ),
    );
  }
}
