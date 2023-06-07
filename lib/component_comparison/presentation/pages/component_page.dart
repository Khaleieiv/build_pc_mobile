import 'package:badges/badges.dart' as badges;
import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:build_pc_mobile/common/presentation/navigation/route_names.dart';
import 'package:build_pc_mobile/common/widgets/custom_icon_button_route_page.dart';
import 'package:build_pc_mobile/component_comparison/presentation/state/component_comparison_notifier.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/componets_widget/cooler_list_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/componets_widget/cpu_list_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/componets_widget/gpu_list_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/componets_widget/hdd_list_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/componets_widget/motherboard_list_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/componets_widget/pc_case_list_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/componets_widget/power_supply_list_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/componets_widget/ram_list_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/componets_widget/ssd_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

class ComponentPage extends StatefulWidget {
  const ComponentPage({
    Key? key,
  }) : super(key: key);

  @override
  State<ComponentPage> createState() => _ComponentPageState();
}

class _ComponentPageState extends State<ComponentPage> {
  @override
  Widget build(BuildContext context) {
    final changedModelName = Provider.of<ComponentComparisonNotifier>(context);

    const iconSizeFirst = 20.0;
    const iconSizeSecond = 40.0;

    const badgePositionTopEnd = 3.0;

    Widget? changeComponentWidget() {
      switch (changedModelName.modelName) {
        case 'processor':
          return const CPUListWidget();
        case 'motherboard':
          return const MotherboardListWidget();
        case 'graphic_card':
          return const GPUListWidget();
        case 'memory':
          return const RamListWidget();
        case 'ssd':
          return const SsdListWidget();
        case 'hdd':
          return const HddListWidget();
        case 'cooler':
          return const CoolerListWidget();
        case 'power_supply':
          return const PowerSupplyListWidget();
        case 'case':
          return const PcCaseListWidget();
        default:
          return const SizedBox();
      }
    }

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.primaryColor,
        actions: [
          CustomIconButtonRoutePage(
            icon: Icons.arrow_back_ios_new,
            sizeIcon: iconSizeFirst,
            onPressed: () => Navigator.pushNamed(context, RouteNames.homePage),
          ),
          Expanded(
            child: SearchBarAnimation(
              buttonBorderColour: Colors.black45,
              textEditingController: TextEditingController(),
              isSearchBoxOnRightSide: true,
              isOriginalAnimation: true,
              enableKeyboardFocus: true,
              enableBoxBorder: true,
              enableButtonBorder: true,
              enableButtonShadow: true,
              enableBoxShadow: true,
              trailingWidget: const Icon(
                Icons.search,
                size: 20,
                color: Colors.black,
              ),
              secondaryButtonWidget: const Icon(
                Icons.close,
                size: 20,
                color: Colors.black,
              ),
              buttonWidget: const Icon(
                Icons.search,
                size: 20,
                color: Colors.black,
              ),
            ),
          ),
          badges.Badge(
            position:
                badges.BadgePosition.topEnd(top: 0, end: badgePositionTopEnd),
            badgeAnimation: const badges.BadgeAnimation.slide(
              disappearanceFadeAnimationDuration: Duration(milliseconds: 200),
              curve: Curves.easeInCubic,
            ),
            showBadge: true,
            badgeStyle: const badges.BadgeStyle(
              badgeColor: AppColors.alternateColor,
            ),
            badgeContent: Text(
              changedModelName.getCounter().toString(),
              style: const TextStyle(color: Colors.white),
            ),
            child: IconButton(
              iconSize: iconSizeSecond,
              icon: Image.asset(
                'assets/icons/scales.png',
              ),
              onPressed: () {
                Navigator.pushNamed(context, RouteNames.comparisonPage);
              },
            ),
          ),
        ],
      ),
      // ignore: avoid-returning-widgets
      body: changeComponentWidget(),
    );
  }
}
