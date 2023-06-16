import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:ez_localization/ez_localization.dart';
import 'package:flutter/material.dart';

class CustomRemoveToComparisonButtonWidget extends StatelessWidget {
  final Function()? onPressed;

  const CustomRemoveToComparisonButtonWidget({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      heroTag: null,
      onPressed: onPressed,
      backgroundColor: AppColors.errorColor,
      icon: const Icon(
        Icons.delete,
        size: 28.0,
      ),
      label:
          Text(context.getString("component_comparison.delete_to_compassion")),
    );
  }
}
