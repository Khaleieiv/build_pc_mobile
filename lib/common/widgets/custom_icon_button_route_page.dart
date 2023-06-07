import 'package:flutter/material.dart';

class CustomIconButtonRoutePage extends StatelessWidget {
  final IconData icon;
  final double sizeIcon;
  final Function()? onPressed;

  const CustomIconButtonRoutePage({
    Key? key,
    required this.icon,
    required this.sizeIcon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        size: sizeIcon,
      ),
    );
  }
}
