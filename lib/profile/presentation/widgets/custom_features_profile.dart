import 'package:flutter/material.dart';

class CustomFeaturesProfile extends StatelessWidget {
  final bool isDarkMode;
  final Color? backgroundColorForLightMode;
  final Color? backgroundColorForDarkMode;
  final String textFeatureProfile;
  final String? fontFamily;
  final FontWeight fontWeight;
  final Color? colorText;
  final double? fontSize;
  final Widget? widget;

  const CustomFeaturesProfile({
    Key? key,
    required this.isDarkMode,
    this.backgroundColorForLightMode,
    this.backgroundColorForDarkMode,
    required this.textFeatureProfile,
    this.widget,
    this.colorText,
    this.fontFamily,
    this.fontSize,
    required this.fontWeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final widget = this.widget;

    return Container(
      color:
      isDarkMode ? backgroundColorForDarkMode : backgroundColorForLightMode,
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(
          24.0,
          12.0,
          24.0,
          12.0,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              textFeatureProfile,
              style: TextStyle(
                fontFamily: fontFamily,
                color: colorText,
                fontWeight: fontWeight,
                fontSize: fontSize,
              ),
            ),
            if (widget != null) widget,
          ],
        ),
      ),
    );
  }
}
