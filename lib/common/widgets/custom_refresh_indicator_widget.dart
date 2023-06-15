import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomRefreshIndicatorWidget extends StatelessWidget {
  final Widget widget;
  final Future<void> Function() onPressed;

  const CustomRefreshIndicatorWidget({
    Key? key,
    required this.widget,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const displacement = 250.0;
    const strokeWidth = 3.0;

    return RefreshIndicator(
      displacement: displacement,
      backgroundColor: AppColors.primaryColor,
      color: AppColors.alternateColor,
      strokeWidth: strokeWidth,
      onRefresh: onPressed,
      child: widget,
    );
  }
}
