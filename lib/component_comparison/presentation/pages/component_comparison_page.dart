import 'package:build_pc_mobile/common/constants/app_sizes.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_listview_horizontal_widget.dart';
import 'package:flutter/material.dart';

class ComponentComparisonPage extends StatelessWidget {
  const ComponentComparisonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontSize = 24.0;
    const fontFamily = 'Lexend Deca';

    return Padding(
      padding: EdgeInsetsDirectional.zero,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          SizedBox(height: AppSizes.defaultPadding),
          Text(
            'Select a comparison component',
            style: TextStyle(
              fontFamily: fontFamily,
              fontWeight: FontWeight.normal,
              fontSize: fontSize,
            ),
          ),
          SizedBox(height: AppSizes.defaultPadding),
          CustomListViewHorizontalWidget(),
        ],
      ),
    );
  }
}
