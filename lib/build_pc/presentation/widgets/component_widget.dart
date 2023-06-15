import 'package:build_pc_mobile/build_pc/presentation/state/components_for_build_pc_notifier.dart';
import 'package:build_pc_mobile/build_pc/presentation/state/selected_component_for_build_notifier.dart';
import 'package:build_pc_mobile/build_pc/presentation/widgets/custom_component_button_widget.dart';
import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:build_pc_mobile/common/domain/entities/cooler/cooler.dart';
import 'package:build_pc_mobile/common/domain/entities/cpu/cpu.dart';
import 'package:build_pc_mobile/common/domain/entities/gpu/gpu.dart';
import 'package:build_pc_mobile/common/domain/entities/motherboard/motherboard.dart';
import 'package:build_pc_mobile/common/domain/entities/pc_case/pc_case.dart';
import 'package:build_pc_mobile/common/domain/entities/power_supply/power_supply.dart';
import 'package:build_pc_mobile/common/domain/entities/ram/ram.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/hdd/hdd.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/ssd/ssd.dart';
import 'package:build_pc_mobile/common/widgets/custom_no_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

class ComponentWidget extends StatefulWidget {
  final TextEditingController searchController;
  final String componentName;
  final String imagePath;

  const ComponentWidget({
    Key? key,
    required this.searchController,
    required this.componentName,
    required this.imagePath,
  }) : super(key: key);

  @override
  State<ComponentWidget> createState() => _ComponentWidgetState();
}

class _ComponentWidgetState extends State<ComponentWidget> {
  ComponentsForBuildPcNotifier get _componentsForBuildPcNotifier =>
      Provider.of<ComponentsForBuildPcNotifier>(context, listen: false);

  SelectedComponentForBuildNotifier get _selectedComponentForBuildNotifier =>
      Provider.of<SelectedComponentForBuildNotifier>(context, listen: false);

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _fetchComponents();
    });
  }

  Future<void> _fetchComponents() async {
    final idBuild = int.parse(
      _selectedComponentForBuildNotifier.addToBuildPcComponents["id"]
          .toString(),
    );
    if (widget.componentName == 'processor') {
      await _componentsForBuildPcNotifier.fetchCpuListBuildPcComponents(
        idBuild,
      );
    } else if (widget.componentName == 'motherboard') {
      await _componentsForBuildPcNotifier.fetchMotherboardListBuildPcComponents(
        idBuild,
      );
    } else if (widget.componentName == 'graphic_card') {
      await _componentsForBuildPcNotifier.fetchGpuListBuildPcComponents(
        idBuild,
      );
    } else if (widget.componentName == 'cooler') {
      await _componentsForBuildPcNotifier.fetchCoolerListBuildPcComponents(
        idBuild,
      );
    } else if (widget.componentName == 'memory') {
      await _componentsForBuildPcNotifier.fetchRamListBuildPcComponents(
        idBuild,
      );
    } else if (widget.componentName == 'hdd') {
      await _componentsForBuildPcNotifier.fetchHddListBuildPcComponents(
        idBuild,
      );
    } else if (widget.componentName == 'ssd') {
      await _componentsForBuildPcNotifier.fetchSsdListBuildPcComponents(
        idBuild,
      );
    } else if (widget.componentName == 'case') {
      await _componentsForBuildPcNotifier.fetchPcCaseListBuildPcComponents(
        idBuild,
      );
    } else if (widget.componentName == 'power_supply') {
      await _componentsForBuildPcNotifier.fetchPowerSupplyListBuildPcComponents(
        idBuild,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final componentsForBuildPcNotifier =
        context.watch<ComponentsForBuildPcNotifier>();
    final selectedComponentForBuildNotifier =
        Provider.of<SelectedComponentForBuildNotifier>(context);

    List<BaseComponent>? _getFilteredComponents() {
      return componentsForBuildPcNotifier
          .getListByComponentName(widget.componentName)
          ?.where(
            //ignore: avoid-non-null-assertion
            (component) => component.name!
                .toLowerCase()
                .contains(widget.searchController.text.toLowerCase()),
          )
          .toList();
    }

    final filteredComponents = _getFilteredComponents();

    Future<void> updateComponents(BaseComponent? model) async {
      final idBuild = int.parse(
        selectedComponentForBuildNotifier.addToBuildPcComponents["id"]
            .toString(),
      );
      if (widget.componentName == 'processor') {
        await componentsForBuildPcNotifier.updateCpuListBuildPcComponents(
          model as CPU?,
          idBuild,
        );
      } else if (widget.componentName == 'motherboard') {
        await componentsForBuildPcNotifier
            .updateMotherboardListBuildPcComponents(
          model as Motherboard?,
          idBuild,
        );
      } else if (widget.componentName == 'graphic_card') {
        await componentsForBuildPcNotifier.updateGpuListBuildPcComponents(
          model as GPU?,
          idBuild,
        );
      } else if (widget.componentName == 'cooler') {
        await componentsForBuildPcNotifier.updateCoolerListBuildPcComponents(
          model as Cooler?,
          idBuild,
        );
      } else if (widget.componentName == 'memory') {
        await componentsForBuildPcNotifier.updateRamListBuildPcComponents(
          model as Ram?,
          idBuild,
        );
      } else if (widget.componentName == 'hdd') {
        await componentsForBuildPcNotifier.updateHddListBuildPcComponents(
          model as Hdd?,
          idBuild,
        );
      } else if (widget.componentName == 'ssd') {
        await componentsForBuildPcNotifier.updateSsdListBuildPcComponents(
          model as Ssd?,
          idBuild,
        );
      } else if (widget.componentName == 'case') {
        await componentsForBuildPcNotifier.updatePcCaseListBuildPcComponents(
          model as PcCase?,
          idBuild,
        );
      } else if (widget.componentName == 'power_supply') {
        await componentsForBuildPcNotifier
            .updatePowerSupplyListBuildPcComponents(
          model as PowerSupply?,
          idBuild,
        );
      }
    }

    return filteredComponents != null
        ? ListView.builder(
            itemCount: filteredComponents.length,
            itemBuilder: (BuildContext context, int index) {
              return CustomComponentButtonWidget(
                imagePath: widget.imagePath,
                nameComponent: filteredComponents[index].name,
                onTap: () async {
                  await updateComponents(filteredComponents[index]);
                  await selectedComponentForBuildNotifier.addToComparison(
                    widget.componentName,
                    filteredComponents[index],
                  );
                  await _fetchComponents();
                  if (!mounted) return;
                  Navigator.pop(context);
                },
              );
            },
          )
        : const CustomNoDataWidget(
            text: 'There is no data on these components in the database.',
          );
  }
}
