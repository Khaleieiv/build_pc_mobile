import 'package:build_pc_mobile/auth/presentation/widgets/or_divider.dart';
import 'package:build_pc_mobile/auth/presentation/widgets/already_have_an_account_check.dart';
import 'package:build_pc_mobile/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:build_pc_mobile/common/constants/app_sizes.dart';
import 'package:build_pc_mobile/common/presentation/navigation/route_names.dart';
import 'package:build_pc_mobile/common/widgets/custom_button_widget.dart';
import 'package:ez_localization/ez_localization.dart';
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
    const fromSTEBStart = 45.0;
    const fromSTEBEnd = 45.0;
    const fromSTEBBottom = 20.0;
    const heightContainer = 60.0;
    const borderRadius = 25.0;
    const fontSizeButton = 22.0;

    return Form(
      child: Column(
        children: [
          const SizedBox(height: AppSizes.defaultPadding),
          CustomTextFormField(
            labelText: context.getString('auth.login_page.email'),
            hintText: context.getString('auth.login_page.email'),
            keyboardType: TextInputType.emailAddress,
            checkSuffixIcon: false,
          ),
          CustomTextFormField(
            labelText: context.getString('auth.login_page.password'),
            hintText: context.getString('auth.login_page.password'),
            keyboardType: TextInputType.visiblePassword,
            checkSuffixIcon: true,
          ),
          const SizedBox(height: AppSizes.defaultPadding),
          CustomButtonWidget(
            fromSTEBStart: 0,
            fromSTEBTop: 0,
            fromSTEBEnd: 0,
            fromSTEBBottom: fromSTEBBottom,
            heightContainer: heightContainer,
            borderRadius: borderRadius,
            routeName: RouteNames.registerPage,
            nameButton: context.getString('auth.login_page.log_in'),
            colorButton: AppColors.primaryColor,
            fontSizeButton: fontSizeButton,
            colorTextButton: AppColors.tertiaryColor,
          ),
          const SizedBox(height: AppSizes.defaultPadding),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.pushNamed(context, RouteNames.registerPage);
            },
          ),
          const OrDivider(),
          CustomButtonWidget(
            fromSTEBStart: fromSTEBStart,
            fromSTEBTop: 0,
            fromSTEBEnd: fromSTEBEnd,
            fromSTEBBottom: fromSTEBBottom,
            heightContainer: heightContainer,
            borderRadius: borderRadius,
            routeName: RouteNames.homePage,
            nameButton: context.getString('auth.login_page.guest'),
            colorButton: AppDarkColors.primaryBackgroundDarkColor,
            fontSizeButton: fontSizeButton,
            colorTextButton: AppColors.tertiaryColor,
          ),
        ],
      ),
    );
  }
}
