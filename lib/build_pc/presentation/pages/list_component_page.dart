import 'package:build_pc_mobile/build_pc/presentation/state/selected_component_for_build_notifier.dart';
import 'package:build_pc_mobile/build_pc/presentation/widgets/component_widget.dart';
import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

class ListComponentPage extends StatefulWidget {
  const ListComponentPage({Key? key}) : super(key: key);

  @override
  State<ListComponentPage> createState() => _ListComponentPageState();
}

class _ListComponentPageState extends State<ListComponentPage> {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final selectedComponentForBuildNotifier =
    Provider.of<SelectedComponentForBuildNotifier>(context);

    Widget? changeComponentWidget() {
      switch (selectedComponentForBuildNotifier.modelName) {
        case 'processor':
          return ComponentWidget(searchController: searchController,
            componentName: 'processor',
            imagePath: 'assets/icons/cpu.png',
          );
        case 'motherboard':
          return ComponentWidget(searchController: searchController,
            componentName: 'motherboard',
            imagePath: 'assets/icons/motherboard.png',
          );
        case 'graphic_card':
          return ComponentWidget(searchController: searchController,
            componentName: 'graphic_card',
            imagePath: 'assets/icons/gpu.png',
          );
        case 'memory':
          return ComponentWidget(searchController: searchController,
            componentName: 'memory',
            imagePath: 'assets/icons/memory.png',
          );
        case 'ssd':
          return ComponentWidget(searchController: searchController,
            componentName: 'ssd',
            imagePath: 'assets/icons/ssd.png',
          );
        case 'hdd':
          return ComponentWidget(searchController: searchController,
            componentName: 'hdd',
            imagePath: 'assets/icons/hdd.png',
          );
        case 'cooler':
          return ComponentWidget(searchController: searchController,
            componentName: 'cooler',
            imagePath: 'assets/icons/fan.png',
          );
        case 'power_supply':
          return ComponentWidget(searchController: searchController,
            componentName: 'power_supply',
            imagePath: 'assets/icons/power_supply.png',
          );
        case 'case':
          return ComponentWidget(searchController: searchController,
            componentName: 'case',
            imagePath: 'assets/icons/case.png',
          );
        default:
          return const SizedBox();
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        actions: [
          Expanded(
            child: SearchBarAnimation(
              onChanged: (value) {
                setState(() {
                  value = searchController.text;
                });
              },
              buttonBorderColour: Colors.black45,
              textEditingController: searchController,
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
        ],
      ),
      // ignore: avoid-returning-widgets
      body: changeComponentWidget(),
    );
  }

}
