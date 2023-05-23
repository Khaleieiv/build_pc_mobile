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
        Navigator.push<dynamic>(
          context,
          MaterialPageRoute<dynamic>(
            builder: (context) => widget,
          ),
        );
      },
      icon: Icon(
        icon,
        size: sizeIcon,
      ),
    );
  }
}
