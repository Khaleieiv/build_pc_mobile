import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:build_pc_mobile/common/constants/app_sizes.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_column_widget.dart';
import 'package:build_pc_mobile/home/presentation/state/dark_light_theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomComponentWidget extends StatelessWidget {
  final String imagePath;
  final String name;
  final String labelTextNameFirst;
  final String labelTextComponentFirst;
  final String labelTextNameSecond;
  final String labelTextComponentSecond;
  final String labelTextNameThird;
  final String labelTextComponentThird;
  final String labelTextNameFourth;
  final String labelTextComponentFourth;
  final String labelTextNameFifth;
  final String labelTextComponentFifth;
  final Widget button;

  const CustomComponentWidget({
    Key? key,
    required this.imagePath,
    required this.name,
    required this.labelTextNameFirst,
    required this.labelTextComponentFirst,
    required this.labelTextNameSecond,
    required this.labelTextComponentSecond,
    required this.labelTextNameThird,
    required this.labelTextComponentThird,
    required this.labelTextNameFourth,
    required this.labelTextComponentFourth,
    required this.labelTextNameFifth,
    required this.labelTextComponentFifth, required this.button,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkLightThemeNotifier>(context);

    const fontSize = 24.0;
    const fontFamily = 'Lexend Deca';

    const heightContainer = 290.0;
    const heightIcon = 100.0;
    const borderRadius = 23.0;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: MediaQuery.of(context).size.width * 1.0,
          height: heightContainer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            shape: BoxShape.rectangle,
            color: themeChange.darkTheme
                ? AppDarkColors.primaryBackgroundDarkColor
                : AppLightColors.primaryBackgroundLightColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    child: Container(
                      color: AppColors.tertiaryColor,
                      height: heightIcon,
                      width: heightIcon,
                      child: Image.asset(
                        imagePath,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(width: AppSizes.defaultPadding),
                  Text(
                    name,
                    style: const TextStyle(
                      fontFamily: fontFamily,
                      fontWeight: FontWeight.w600,
                      fontSize: fontSize,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSizes.defaultPadding),
              Expanded(
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 20,
                    mainAxisExtent: 50,
                  ),
                  scrollDirection: Axis.vertical,
                  children: [
                    CustomColumnWidget(
                      labelTextName: labelTextNameFirst,
                      labelTextComponent: labelTextComponentFirst,
                    ),
                    CustomColumnWidget(
                      labelTextName: labelTextNameSecond,
                      labelTextComponent: labelTextComponentSecond,
                    ),
                    CustomColumnWidget(
                      labelTextName: labelTextNameThird,
                      labelTextComponent: labelTextComponentThird,
                    ),
                    CustomColumnWidget(
                      labelTextName: labelTextNameFourth,
                      labelTextComponent: labelTextComponentFourth,
                    ),
                    CustomColumnWidget(
                      labelTextName: labelTextNameFifth,
                      labelTextComponent: labelTextComponentFifth,
                    ),
                  ],
                ),
              ),
              button,
              const SizedBox(height: AppSizes.defaultPadding),
            ],
          ),
        ),
      ),
    );
  }
}
