import 'package:build_pc_mobile/build_pc/presentation/state/build_pc_notifier.dart';
import 'package:build_pc_mobile/build_pc/presentation/state/components_for_build_pc_notifier.dart';
import 'package:build_pc_mobile/build_pc/presentation/state/selected_component_for_build_notifier.dart';
import 'package:build_pc_mobile/build_pc/presentation/widgets/custom_component_button_widget.dart';
import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'package:searchbar_animation/searchbar_animation.dart';

class ListComponentPage extends StatefulWidget {
  const ListComponentPage({Key? key}) : super(key: key);

  @override
  State<ListComponentPage> createState() => _ListComponentPageState();
}

class _ListComponentPageState extends State<ListComponentPage> {
  BuildPcNotifier get _buildPcNotifier =>
      Provider.of<BuildPcNotifier>(context, listen: false);

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Provider.of<ComponentsForBuildPcNotifier>(context, listen: false)
          .fetchBuildPcUserListComponents(_buildPcNotifier.buildPc?.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    final componentsForBuildPcNotifier =
        Provider.of<ComponentsForBuildPcNotifier>(context);
    final selectedComponentForBuildNotifier =
        Provider.of<SelectedComponentForBuildNotifier>(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        actions: [
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
        ],
      ),
      body: ListView.builder(
        itemCount: componentsForBuildPcNotifier.listCpuBuildPc?.length,
        itemBuilder: (BuildContext context, int index) {
          return CustomComponentButtonWidget(
            imagePath: 'assets/icons/cpu.png',
            nameComponent:
                componentsForBuildPcNotifier.listCpuBuildPc?[index].name,
            onTap: () {
              selectedComponentForBuildNotifier.addToComparison(
                "processor",
                //ignore: avoid-non-null-assertion
                componentsForBuildPcNotifier.listCpuBuildPc![index],
              );
              Navigator.pop(context);
            },
          );
        },
      ),
    );
  }
}
