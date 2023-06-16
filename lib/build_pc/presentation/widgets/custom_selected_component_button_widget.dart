import 'package:build_pc_mobile/build_pc/presentation/state/selected_component_for_build_notifier.dart';
import 'package:build_pc_mobile/build_pc/presentation/widgets/custom_elevated_button_widget.dart';
import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:build_pc_mobile/common/constants/app_sizes.dart';
import 'package:build_pc_mobile/common/presentation/navigation/route_names.dart';
import 'package:build_pc_mobile/home/presentation/state/dark_light_theme_notifier.dart';
import 'package:ez_localization/ez_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomSelectedComponentButtonWidget extends StatelessWidget {
  final String imagePath;
  final String nameComponent;
  final String modelName;
  final Function()? onPressed;

  const CustomSelectedComponentButtonWidget({
    Key? key,
    required this.imagePath,
    required this.nameComponent,
    this.onPressed,
    required this.modelName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkLightThemeNotifier>(context);
    final selectedComponentForBuildNotifier =
        Provider.of<SelectedComponentForBuildNotifier>(context);

    const fontSizeContainer = 26.0;
    const fontFamily = 'Lexend Deca';

    const heightContainer = 170.0;
    const heightIcon = 90.0;
    const borderRadiusBoxDecoration = 23.0;

    const opacity = 0.2;
    const spreadRadius = 5.0;
    const blurRadius = 7.0;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 1.0,
        height: heightContainer,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadiusBoxDecoration),
          shape: BoxShape.rectangle,
          color: themeChange.darkTheme
              ? AppDarkColors.primaryBackgroundDarkColor
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                Flexible(
                  child: Text(
                    nameComponent,
                    style: const TextStyle(
                      fontFamily: fontFamily,
                      fontWeight: FontWeight.w600,
                      fontSize: fontSizeContainer,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomElevatedButtonWidget(
                  icon: Icons.switch_left,
                  label: context.getString('build_pc.swap.switch'),
                  onPressed: () {
                    selectedComponentForBuildNotifier.setModelName(modelName);
                    Navigator.pushNamed(
                      context,
                      RouteNames.listComponentPage,
                    );
                  },
                ),
                CustomElevatedButtonWidget(
                  icon: Icons.remove_circle,
                  label: context.getString('build_pc.swap.remove'),
                  onPressed: onPressed,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
