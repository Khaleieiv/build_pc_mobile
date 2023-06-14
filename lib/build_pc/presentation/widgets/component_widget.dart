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

  void _fetchComponents() {
    final idBuild = int.parse(
      _selectedComponentForBuildNotifier.addToBuildPcComponents["id"]
          .toString(),
    );
    if (widget.componentName == 'processor') {
      _componentsForBuildPcNotifier.fetchCpuListBuildPcComponents(
        idBuild,
      );
    } else if (widget.componentName == 'motherboard') {
      _componentsForBuildPcNotifier.fetchMotherboardListBuildPcComponents(
        idBuild,
      );
    } else if (widget.componentName == 'graphic_card') {
      _componentsForBuildPcNotifier.fetchGpuListBuildPcComponents(
        idBuild,
      );
    } else if (widget.componentName == 'cooler') {
      _componentsForBuildPcNotifier.fetchCoolerListBuildPcComponents(
        idBuild,
      );
    } else if (widget.componentName == 'memory') {
      _componentsForBuildPcNotifier.fetchRamListBuildPcComponents(
        idBuild,
      );
    } else if (widget.componentName == 'hdd') {
      _componentsForBuildPcNotifier.fetchHddListBuildPcComponents(
        idBuild,
      );
    } else if (widget.componentName == 'ssd') {
      _componentsForBuildPcNotifier.fetchSsdListBuildPcComponents(
        idBuild,
      );
    } else if (widget.componentName == 'case') {
      _componentsForBuildPcNotifier.fetchPcCaseListBuildPcComponents(
        idBuild,
      );
    } else if (widget.componentName == 'power_supply') {
      _componentsForBuildPcNotifier.fetchPowerSupplyListBuildPcComponents(
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

    void updateComponents(BaseComponent? model)  {
      final idBuild = int.parse(
        selectedComponentForBuildNotifier.addToBuildPcComponents["id"]
            .toString(),
      );
      if (widget.componentName == 'processor') {
        componentsForBuildPcNotifier.updateCpuListBuildPcComponents(
          model as CPU?,
          idBuild,
        );
      } else if (widget.componentName == 'motherboard') {
        componentsForBuildPcNotifier.updateMotherboardListBuildPcComponents(
          model as Motherboard?,
          idBuild,
        );
      } else if (widget.componentName == 'graphic_card') {
        componentsForBuildPcNotifier.updateGpuListBuildPcComponents(
          model as GPU?,
          idBuild,
        );
      } else if (widget.componentName == 'cooler') {
        componentsForBuildPcNotifier.updateCoolerListBuildPcComponents(
          model as Cooler?,
          idBuild,
        );
      } else if (widget.componentName == 'memory') {
        componentsForBuildPcNotifier.updateRamListBuildPcComponents(
          model as Ram?,
          idBuild,
        );
      } else if (widget.componentName == 'hdd') {
        componentsForBuildPcNotifier.updateHddListBuildPcComponents(
          model as Hdd?,
          idBuild,
        );
      } else if (widget.componentName == 'ssd') {
        componentsForBuildPcNotifier.updateSsdListBuildPcComponents(
          model as Ssd?,
          idBuild,
        );
      } else if (widget.componentName == 'case') {
        componentsForBuildPcNotifier.updatePcCaseListBuildPcComponents(
          model as PcCase?,
          idBuild,
        );
      } else if (widget.componentName == 'power_supply') {
        componentsForBuildPcNotifier.updatePowerSupplyListBuildPcComponents(
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
                onTap: () {
                  const Duration(milliseconds: 3000);
                  updateComponents(filteredComponents[index]);
                  const Duration(milliseconds: 3000);
                  selectedComponentForBuildNotifier.addToComparison(
                    widget.componentName,
                    filteredComponents[index],
                  );
                  _fetchComponents();
                  const Duration(milliseconds: 3000);
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
