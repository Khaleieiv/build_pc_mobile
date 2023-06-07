import 'package:build_pc_mobile/common/constants/app_sizes.dart';
import 'package:build_pc_mobile/common/widgets/custom_logo_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_listview_horizontal_widget.dart';
import 'package:ez_localization/ez_localization.dart';
import 'package:flutter/material.dart';

class ComponentComparisonPage extends StatelessWidget {
  const ComponentComparisonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontSize = 26.0;

    return Padding(
      padding: EdgeInsetsDirectional.zero,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: AppSizes.defaultPadding),
          CustomLogoWidget(
            label: context.getString('comparison.label'),
            fontSize: fontSize,
          ),
          const SizedBox(height: AppSizes.defaultPadding),
          const CustomListViewHorizontalWidget(),
        ],
      ),
    );
  }
}
