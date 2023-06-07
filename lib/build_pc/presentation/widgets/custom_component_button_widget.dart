import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:build_pc_mobile/common/constants/app_sizes.dart';
import 'package:build_pc_mobile/home/presentation/state/dark_light_theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomComponentButtonWidget extends StatelessWidget {
  final String imagePath;
  final String? nameComponent;
  final Function()? onTap;

  const CustomComponentButtonWidget({
    Key? key,
    required this.imagePath,
    required this.nameComponent,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkLightThemeNotifier>(context);

    const fontSize = 26.0;
    const fontFamily = 'Lexend Deca';

    const heightContainer = 110.0;
    const heightIcon = 90.0;
    const borderRadius = 23.0;
    const opacity = 0.2;
    const spreadRadius = 5.0;
    const blurRadius = 7.0;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width * 1.0,
          height: heightContainer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            shape: BoxShape.rectangle,
            color: themeChange.darkTheme
                ? AppColors.primaryColor
                : AppLightColors.primaryBackgroundLightColor,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(opacity),
                spreadRadius: spreadRadius,
                blurRadius: blurRadius,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  const SizedBox(width: AppSizes.defaultPadding),
                  Container(
                    color: AppColors.tertiaryColor,
                    height: heightIcon,
                    width: heightIcon,
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: AppSizes.defaultPadding),
                  Text(
                    nameComponent ?? '',
                    style: const TextStyle(
                      fontFamily: fontFamily,
                      fontWeight: FontWeight.w600,
                      fontSize: fontSize,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
