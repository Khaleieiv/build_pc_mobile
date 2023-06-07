import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:build_pc_mobile/home/presentation/state/dark_light_theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomAddToBuildButtonWidget extends StatelessWidget {
  final String label;
  final Function()? onPressed;

  const CustomAddToBuildButtonWidget({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkLightThemeNotifier>(context);

    const heightSizeBox = 80.0;
    const borderRadius = 10.0;
    const sizeIcon = 35.0;
    const fontSize = 18.0;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: heightSizeBox,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: themeChange.darkTheme
                ? AppDarkColors.primaryBackgroundDarkColor
                : AppLightColors.accent4LightColor,
            shadowColor: AppColors.blackColor,
            padding: const EdgeInsets.all(8.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
          child: Column(
            children: [
              Icon(
                Icons.add,
                size: sizeIcon,
                color: themeChange.darkTheme
                    ? AppDarkColors.primaryTextDarkColor
                    : AppLightColors.primaryTextLightColor,
              ),
              Text(
                label,
                style: TextStyle(
                  fontSize: fontSize,
                  color: themeChange.darkTheme
                      ? AppDarkColors.primaryTextDarkColor
                      : AppLightColors.primaryTextLightColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
