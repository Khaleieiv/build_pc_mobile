import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:build_pc_mobile/home/presentation/state/dark_light_theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomContainerForBuild extends StatelessWidget {
  final Widget widget;
  final double heightContainer;
  final double borderRadius;
  final double opacity;
  final double spreadRadius;
  final double blurRadius;

  const CustomContainerForBuild({
    Key? key,
    required this.widget,
    required this.heightContainer,
    required this.borderRadius,
    required this.opacity,
    required this.spreadRadius,
    required this.blurRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkLightThemeNotifier>(context);

    return Container(
      width: MediaQuery.of(context).size.width * 1.0,
      height: heightContainer,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        shape: BoxShape.rectangle,
        color: themeChange.darkTheme
            ? AppDarkColors.customBackgroundDarkColor
            : AppLightColors.accent4LightColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(opacity),
            spreadRadius: spreadRadius,
            blurRadius: blurRadius,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: widget,
    );
  }
}
