import 'package:build_pc_mobile/auth/presentation/pages/components/registration_form.dart';
import 'package:build_pc_mobile/common/constants/constants.dart';
import 'package:build_pc_mobile/common/widgets/background.dart';
import 'package:build_pc_mobile/common/widgets/custom_logo_widget.dart';
import 'package:build_pc_mobile/responsive.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Responsive(
          mobile: const MobileSignupScreen(),
          tablet: Row(
            children: [
              const Expanded(
                child: CustomLogoWidget(),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 450,
                      child: RegistrationPage(),
                    ),
                    SizedBox(height: defaultPadding / 2),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MobileSignupScreen extends StatelessWidget {
  const MobileSignupScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const CustomLogoWidget(),
        const SizedBox(height: defaultPadding * 4),
        Row(
          children: const [
            Spacer(),
            Expanded(
              flex: 8,
              child: RegistrationForm(),
            ),
            Spacer(),
          ],
        ),
      ],
    );
  }
}
