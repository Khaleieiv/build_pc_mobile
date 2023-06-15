import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:build_pc_mobile/home/presentation/state/dark_light_theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomButtonRatingWidget extends StatelessWidget {
  final Function()? onPressedFirst;
  final Function()? onPressedSecond;
  final String label;
  final bool swapButton;

  const CustomButtonRatingWidget({
    Key? key,
    required this.label,
    required this.swapButton,
    required this.onPressedFirst,
    required this.onPressedSecond,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkLightThemeNotifier>(context);
    const sizeIcon = 40.0;
    const fontFamily = 'Lexend Deca';

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: themeChange.darkTheme
            ? AppDarkColors.customBackgroundDarkColor
            : AppLightColors.accent4LightColor,
      ),
      onPressed: swapButton ? onPressedFirst : onPressedSecond,
      child: Row(
        children: [
          Text(
            label,
            style: const TextStyle(
              fontSize: 20,
              fontFamily: fontFamily,
            ),
          ),
          if (swapButton)
            const Icon(
              Icons.star_purple500_outlined,
              color: Colors.deepPurpleAccent,
              size: sizeIcon,
            )
          else
            const Icon(
              Icons.star_purple500_outlined,
              color: Colors.grey,
              size: sizeIcon,
            ),
        ],
      ),
    );
  }
}
