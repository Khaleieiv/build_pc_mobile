import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:ez_localization/ez_localization.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final Function? press;

  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login
              ? context.getString('auth.login_page.account')
              : context.getString('auth.registration_page.account'),
          style: const TextStyle(
            color: AppColors.tertiaryColor,
            fontSize: 14,
          ),
        ),
        GestureDetector(
          onTap: press as void Function()?,
          child: Text(
            login
                ? context.getString('auth.login_page.sign_up')
                : context.getString('auth.registration_page.sign_in'),
            style: const TextStyle(
              color: AppColors.tertiaryColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
