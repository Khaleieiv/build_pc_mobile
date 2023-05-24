import 'package:build_pc_mobile/auth/presentation/widgets/already_have_an_account_check.dart';
import 'package:build_pc_mobile/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:build_pc_mobile/common/constants/app_sizes.dart';
import 'package:build_pc_mobile/common/presentation/navigation/route_names.dart';
import 'package:build_pc_mobile/common/widgets/custom_button_widget.dart';
import 'package:ez_localization/ez_localization.dart';
import 'package:flutter/material.dart';

class RegistrationForm extends StatelessWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fromSTEBBottom = 20.0;
    const heightContainer = 60.0;
    const borderRadius = 25.0;
    const fontSizeButton = 22.0;

    return Form(
      child: Column(
        children: [
          CustomTextFormField(
            labelText: context.getString('auth.registration_page.name'),
            hintText: context.getString('auth.registration_page.name'),
            keyboardType: TextInputType.name,
            checkSuffixIcon: false,
          ),
          CustomTextFormField(
            labelText: context.getString('auth.registration_page.login'),
            hintText: context.getString('auth.registration_page.login'),
            keyboardType: TextInputType.name,
            checkSuffixIcon: false,
          ),
           CustomTextFormField(
            labelText: context.getString('auth.registration_page.password'),
            hintText: context.getString('auth.registration_page.password'),
            keyboardType: TextInputType.visiblePassword,
            checkSuffixIcon: true,
          ),
           CustomTextFormField(
            labelText: context.getString('auth.registration_page.email'),
            hintText: context.getString('auth.registration_page.email'),
            keyboardType: TextInputType.emailAddress,
            checkSuffixIcon: false,
          ),
          const SizedBox(height: AppSizes.defaultPadding / 2),
           CustomButtonWidget(
            fromSTEBStart: 0,
            fromSTEBTop: 0,
            fromSTEBEnd: 0,
            fromSTEBBottom: fromSTEBBottom,
            heightContainer: heightContainer,
            borderRadius: borderRadius,
            routeName: RouteNames.registerPage,
            nameButton: context.getString('auth.registration_page.sign_in'),
            colorButton: AppColors.primaryColor,
            fontSizeButton: fontSizeButton,
            colorTextButton: AppColors.tertiaryColor,
          ),
          const SizedBox(height: AppSizes.defaultPadding),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.pushNamed(context, RouteNames.loginPage);
            },
          ),
        ],
      ),
    );
  }
}
