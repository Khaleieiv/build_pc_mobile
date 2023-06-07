import 'package:build_pc_mobile/auth/presentation/pages/components/registration_form.dart';
import 'package:build_pc_mobile/common/constants/app_sizes.dart';
import 'package:build_pc_mobile/common/widgets/background.dart';
import 'package:build_pc_mobile/common/widgets/custom_logo_widget.dart';
import 'package:build_pc_mobile/responsive.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Responsive(
        mobile: const MobileSignupScreen(),
        tablet: Row(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CustomLogoWidget(
                    label: 'PcBuild',
                    fontSize: 60,
                  ),
                ],
              ),
            ),
            const Expanded(
              child: SingleChildScrollView(child: RegistrationForm()),
            )
          ],
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
        const CustomLogoWidget(
          label: 'PcBuild',
          fontSize: 60,
        ),
        const SizedBox(height: AppSizes.defaultPadding * 4),
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
