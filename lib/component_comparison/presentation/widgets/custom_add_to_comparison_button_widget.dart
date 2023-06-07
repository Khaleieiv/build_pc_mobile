import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomAddToComparisonButtonWidget extends StatelessWidget {
  final Function()? onPressed;

  const CustomAddToComparisonButtonWidget({Key? key, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      heroTag: null,
      onPressed: onPressed,
      backgroundColor: AppColors.alternateColor,
      icon: const Icon(
        Icons.add,
        size: 28.0,
      ),
      label: const Text('Add to compassion'),
    );
  }
}
