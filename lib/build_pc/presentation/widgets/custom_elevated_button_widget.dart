import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:build_pc_mobile/common/constants/app_sizes.dart';
import 'package:build_pc_mobile/home/presentation/state/dark_light_theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomElevatedButtonWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  final Function()? onPressed;

  const CustomElevatedButtonWidget({
    Key? key,
    required this.icon,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkLightThemeNotifier>(context);

    const borderRadiusElevatedButton = 20.0;
    const sizeIcon = 20.0;
    const fontSizeElevatedButton = 16.0;

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        side: const BorderSide(
          color: Colors.white,
          width: 0.5,
        ),
        backgroundColor: themeChange.darkTheme
            ? AppDarkColors.primaryBackgroundDarkColor
            : AppLightColors.accent4LightColor,
        shadowColor: AppColors.blackColor,
        padding: const EdgeInsets.all(8.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadiusElevatedButton),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(
                icon,
                size: sizeIcon,
                color: themeChange.darkTheme
                    ? AppDarkColors.primaryTextDarkColor
                    : AppLightColors.primaryTextLightColor,
              ),
              const SizedBox(width: AppSizes.defaultPadding / 2),
              Text(
                label,
                style: TextStyle(
                  fontSize: fontSizeElevatedButton,
                  color: themeChange.darkTheme
                      ? AppDarkColors.primaryTextDarkColor
                      : AppLightColors.primaryTextLightColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
