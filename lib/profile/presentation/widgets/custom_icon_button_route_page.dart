import 'package:build_pc_mobile/common/presentation/navigation/route_names.dart';
import 'package:flutter/material.dart';

class CustomIconButtonRoutePage extends StatelessWidget {
  final String routePage;
  final IconData icon;
  final double sizeIcon;

  const CustomIconButtonRoutePage({
    Key? key,
    required this.icon,
    required this.sizeIcon,
    required this.routePage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pushNamed(context, routePage);
      },
      icon: Icon(
        icon,
        size: sizeIcon,
      ),
    );
  }
}
