import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomColumnWidget extends StatelessWidget {
  final String labelTextName;
  final String labelTextComponent;

  const CustomColumnWidget({
    Key? key,
    required this.labelTextName,
    required this.labelTextComponent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelTextName,
          style: const TextStyle(
            color: AppColors.secondaryTextColor,
          ),
        ),
        Text(
          labelTextComponent,
        ),
      ],
    );
  }
}
