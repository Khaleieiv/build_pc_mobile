import 'package:build_pc_mobile/auth/presentation/pages/components/login_form.dart';
import 'package:build_pc_mobile/common/constants/app_sizes.dart';
import 'package:build_pc_mobile/common/widgets/background.dart';
import 'package:build_pc_mobile/common/widgets/custom_logo_widget.dart';
import 'package:build_pc_mobile/responsive.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Responsive(
          mobile: const MobileLoginScreen(),
          tablet: Row(
            children: [
              const Expanded(
                child: CustomLogoWidget(),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 450,
                      child: LoginForm(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MobileLoginScreen extends StatelessWidget {
  const MobileLoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const CustomLogoWidget(),
        const SizedBox(height: AppSizes.defaultPadding * 5),
        Row(
          children: const [
            Spacer(),
            Expanded(
              flex: 8,
              child: LoginForm(),
            ),
            Spacer(),
          ],
        ),
      ],
    );
  }
}
