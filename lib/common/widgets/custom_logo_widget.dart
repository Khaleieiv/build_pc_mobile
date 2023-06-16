import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CustomLogoWidget extends StatelessWidget {
  final String label;
  final double fontSize;

  const CustomLogoWidget({
    Key? key,
    required this.label,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const timeAnimation = 3000;

    return Text(
      label,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: fontSize,
        color: AppColors.tertiaryColor,
      ),
    )
        .animate(onPlay: (controller) => controller.repeat())
        .shimmer(duration: timeAnimation.ms, color: AppColors.primaryColor)
        .animate() // this wraps the previous Animate in another Animate
        .fadeIn(duration: timeAnimation.ms, curve: Curves.easeOutQuad)
        .slide();
  }
}
