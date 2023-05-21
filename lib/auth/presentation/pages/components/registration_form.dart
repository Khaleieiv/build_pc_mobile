import 'package:build_pc_mobile/auth/presentation/widgets/already_have_an_account_check.dart';
import 'package:build_pc_mobile/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:build_pc_mobile/common/constants/constants.dart';
import 'package:build_pc_mobile/common/presentation/navigation/route_names.dart';
import 'package:build_pc_mobile/common/widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';

class RegistrationForm extends StatelessWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const CustomTextFormField(
            labelText: 'Name',
            hintText: 'Name',
            keyboardType: TextInputType.name,
            checkSuffixIcon: false,
          ),
          const CustomTextFormField(
            labelText: 'Login',
            hintText: 'Login',
            keyboardType: TextInputType.name,
            checkSuffixIcon: false,
          ),
          const CustomTextFormField(
            labelText: 'Password',
            hintText: 'Password',
            keyboardType: TextInputType.visiblePassword,
            checkSuffixIcon: true,
          ),
          const CustomTextFormField(
            labelText: 'Email',
            hintText: 'Email',
            keyboardType: TextInputType.emailAddress,
            checkSuffixIcon: false,
          ),
          const SizedBox(height: defaultPadding / 2),
          const CustomButtonWidget(
            fromSTEBStart: 0,
            fromSTEBTop: 0,
            fromSTEBEnd: 0,
            fromSTEBBottom: 20,
            heightContainer: 60,
            borderRadius: 25,
            routeName: RouteNames.registerPage,
            nameButton: 'Sign Up',
            colorButton: kPrimaryColor,
            fontSizeButton: 22.0,
            colorTextButton: kPrimaryLightColor,
          ),
          const SizedBox(height: defaultPadding),
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
