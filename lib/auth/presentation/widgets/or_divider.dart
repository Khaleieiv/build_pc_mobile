import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:ez_localization/ez_localization.dart';
import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const sizeHeight = 0.02;
    const sizeWidth = 0.8;

    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * sizeHeight),
      width: size.width * sizeWidth,
      child: Row(
        children: <Widget>[
          const BuildDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              context.getString('auth.login_page.or'),
              style: const TextStyle(
                color: AppColors.tertiaryColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const BuildDivider(),
        ],
      ),
    );
  }
}

class BuildDivider extends StatelessWidget {
  const BuildDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Divider(
        color: Color(0xFF555252),
        height: 3,
      ),
    );
  }
}
