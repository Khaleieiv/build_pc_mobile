import 'package:build_pc_mobile/common/presentation/navigation/route_names.dart';
import 'package:flutter/material.dart';

class CustomIconButtonRoutePage extends StatelessWidget {
  final Widget widget;
  final IconData icon;
  final double sizeIcon;

  const CustomIconButtonRoutePage({
    Key? key,
    required this.icon,
    required this.sizeIcon,
    required this.widget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pushNamed(context, RouteNames.loginPage);
      },
      icon: Icon(
        icon,
        size: sizeIcon,
      ),
    );
  }
}
