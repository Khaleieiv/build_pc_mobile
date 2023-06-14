import 'package:build_pc_mobile/build_pc/presentation/state/build_pc_notifier.dart';
import 'package:build_pc_mobile/build_pc/presentation/state/components_for_build_pc_notifier.dart';
import 'package:build_pc_mobile/build_pc/presentation/state/selected_component_for_build_notifier.dart';
import 'package:build_pc_mobile/build_pc/presentation/widgets/custom_add_to_build_button_widget.dart';
import 'package:build_pc_mobile/build_pc/presentation/widgets/custom_alert_dialog_widget.dart';
import 'package:build_pc_mobile/build_pc/presentation/widgets/custom_selected_component_button_widget.dart';
import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:build_pc_mobile/common/domain/entities/ram/ram.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/hdd/hdd.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/ssd/ssd.dart';
import 'package:build_pc_mobile/common/presentation/navigation/route_names.dart';
import 'package:build_pc_mobile/common/widgets/custom_icon_button_route_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddComponentToBuildPage extends StatefulWidget {
  const AddComponentToBuildPage({Key? key}) : super(key: key);

  @override
  State<AddComponentToBuildPage> createState() =>
      _AddComponentToBuildPageState();
}

class _AddComponentToBuildPageState extends State<AddComponentToBuildPage> {
  BuildPcNotifier get _buildPcNotifier =>
      Provider.of<BuildPcNotifier>(context, listen: false);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final selectedComponentForBuildNotifier =
        Provider.of<SelectedComponentForBuildNotifier>(context);
    final buildPcNotifier = Provider.of<BuildPcNotifier>(context);

    const sizeIcon = 25.0;

    final ram = selectedComponentForBuildNotifier.getComponentName<Ram>(
      selectedComponentForBuildNotifier.addToBuildPcComponents["memory"]
          as List<Ram>?,
    );
    final hdd = selectedComponentForBuildNotifier.getComponentName<Hdd>(
      selectedComponentForBuildNotifier.addToBuildPcComponents["hdd"]
          as List<Hdd>?,
    );
    final ssd = selectedComponentForBuildNotifier.getComponentName<Ssd>(
      selectedComponentForBuildNotifier.addToBuildPcComponents["ssd"]
          as List<Ssd>?,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        leading: CustomIconButtonRoutePage(
          icon: Icons.arrow_back,
          sizeIcon: sizeIcon,
          onPressed: () {
            selectedComponentForBuildNotifier.clearSwapButton(
              clear: true,
            );
            buildPcNotifier
                .deleteBuildPcUserListComponents(buildPcNotifier.buildPc?.id);
            Navigator.pop(context);
          },
        ),
        actions: const [
          CustomAlertDialogWidget(),
        ],
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.zero,
        child: SingleChildScrollView(
          child: Column(
            children: [
              if (selectedComponentForBuildNotifier.checkAddProcessor)
                CustomAddToBuildButtonWidget(
                  label: 'Processor',
                  onPressed: () {
                    selectedComponentForBuildNotifier.setModelName("processor");
                    Navigator.pushNamed(
                      context,
                      RouteNames.listComponentPage,
                    );
                  },
                )
              else
                CustomSelectedComponentButtonWidget(
                  imagePath: 'assets/icons/cpu.png',
                  //ignore: avoid_dynamic_calls
                  nameComponent: selectedComponentForBuildNotifier
                          .addToBuildPcComponents["processor"]?.name
                          .toString() ??
                      '',
                  onPressed: () {
                    Provider.of<ComponentsForBuildPcNotifier>(
                      context,
                      listen: false,
                    ).deleteCpuListBuildPcComponents(
                      _buildPcNotifier.buildPc?.id,
                    );
                    selectedComponentForBuildNotifier
                        .removeFromComparison("processor");
                  },
                  modelName: 'processor',
                ),
              if (selectedComponentForBuildNotifier.checkAddMotherboard)
                CustomAddToBuildButtonWidget(
                  label: 'Motherboard',
                  onPressed: () {
                    selectedComponentForBuildNotifier
                        .setModelName("motherboard");
                    Navigator.pushNamed(
                      context,
                      RouteNames.listComponentPage,
                    );
                  },
                )
              else
                CustomSelectedComponentButtonWidget(
                  imagePath: 'assets/icons/motherboard.png',
                  //ignore: avoid_dynamic_calls
                  nameComponent: selectedComponentForBuildNotifier
                          .addToBuildPcComponents["motherboard"]?.name
                          .toString() ??
                      '',
                  onPressed: () {
                    Provider.of<ComponentsForBuildPcNotifier>(
                      context,
                      listen: false,
                    ).deleteMotherboardListBuildPcComponents(
                      _buildPcNotifier.buildPc?.id,
                    );
                    selectedComponentForBuildNotifier
                        .removeFromComparison("motherboard");
                  },
                  modelName: 'motherboard',
                ),
              if (selectedComponentForBuildNotifier.checkAddCooler)
                CustomAddToBuildButtonWidget(
                  label: 'Cooler',
                  onPressed: () {
                    selectedComponentForBuildNotifier.setModelName("cooler");
                    Navigator.pushNamed(
                      context,
                      RouteNames.listComponentPage,
                    );
                  },
                )
              else
                CustomSelectedComponentButtonWidget(
                  imagePath: 'assets/icons/fan.png',
                  //ignore: avoid_dynamic_calls
                  nameComponent: selectedComponentForBuildNotifier
                          .addToBuildPcComponents["cooler"]?.name
                          .toString() ??
                      '',
                  onPressed: () {
                    Provider.of<ComponentsForBuildPcNotifier>(
                      context,
                      listen: false,
                    ).deleteCoolerListBuildPcComponents(
                      _buildPcNotifier.buildPc?.id,
                    );
                    selectedComponentForBuildNotifier
                        .removeFromComparison("cooler");
                  },
                  modelName: 'cooler',
                ),
              if (selectedComponentForBuildNotifier.checkAddGPU)
                CustomAddToBuildButtonWidget(
                  label: 'Graphic Card',
                  onPressed: () {
                    selectedComponentForBuildNotifier
                        .setModelName("graphic_card");
                    Navigator.pushNamed(
                      context,
                      RouteNames.listComponentPage,
                    );
                  },
                )
              else
                CustomSelectedComponentButtonWidget(
                  imagePath: 'assets/icons/gpu.png',
                  //ignore: avoid_dynamic_calls
                  nameComponent: selectedComponentForBuildNotifier
                          .addToBuildPcComponents["graphic_card"]?.name
                          .toString() ??
                      '',
                  onPressed: () {
                    Provider.of<ComponentsForBuildPcNotifier>(
                      context,
                      listen: false,
                    ).deleteGpuListBuildPcComponents(
                      _buildPcNotifier.buildPc?.id,
                    );
                    selectedComponentForBuildNotifier
                        .removeFromComparison("graphic_card");
                  },
                  modelName: 'graphic_card',
                ),
              if (selectedComponentForBuildNotifier.checkAddMemory)
                CustomAddToBuildButtonWidget(
                  label: 'Memory',
                  onPressed: () {
                    selectedComponentForBuildNotifier.setModelName("memory");
                    Navigator.pushNamed(
                      context,
                      RouteNames.listComponentPage,
                    );
                  },
                )
              else
                CustomSelectedComponentButtonWidget(
                  imagePath: 'assets/icons/memory.png',
                  //ignore: avoid_dynamic_calls
                  nameComponent: '$ram',
                  onPressed: () {
                    Provider.of<ComponentsForBuildPcNotifier>(
                      context,
                      listen: false,
                    ).deleteRamListBuildPcComponents(
                      _buildPcNotifier.buildPc?.id,
                    );
                    selectedComponentForBuildNotifier
                        .removeFromComparison("memory");
                  },
                  modelName: 'memory',
                ),
              if (selectedComponentForBuildNotifier.checkAddHdd)
                CustomAddToBuildButtonWidget(
                  label: 'Hdd',
                  onPressed: () {
                    selectedComponentForBuildNotifier.setModelName("hdd");
                    Navigator.pushNamed(
                      context,
                      RouteNames.listComponentPage,
                    );
                  },
                )
              else
                CustomSelectedComponentButtonWidget(
                  imagePath: 'assets/icons/hdd.png',
                  //ignore: avoid_dynamic_calls
                  nameComponent: '$hdd',
                  onPressed: () {
                    Provider.of<ComponentsForBuildPcNotifier>(
                      context,
                      listen: false,
                    ).deleteHddListBuildPcComponents(
                      _buildPcNotifier.buildPc?.id,
                    );
                    selectedComponentForBuildNotifier
                        .removeFromComparison("hdd");
                  },
                  modelName: 'hdd',
                ),
              if (selectedComponentForBuildNotifier.checkAddSsd)
                CustomAddToBuildButtonWidget(
                  label: 'Ssd',
                  onPressed: () {
                    selectedComponentForBuildNotifier.setModelName("ssd");
                    Navigator.pushNamed(
                      context,
                      RouteNames.listComponentPage,
                    );
                  },
                )
              else
                CustomSelectedComponentButtonWidget(
                  imagePath: 'assets/icons/ssd.png',
                  //ignore: avoid_dynamic_calls
                  nameComponent: '$ssd',
                  onPressed: () {
                    Provider.of<ComponentsForBuildPcNotifier>(
                      context,
                      listen: false,
                    ).deleteSsdListBuildPcComponents(
                      _buildPcNotifier.buildPc?.id,
                    );
                    selectedComponentForBuildNotifier
                        .removeFromComparison("ssd");
                  },
                  modelName: 'ssd',
                ),
              if (selectedComponentForBuildNotifier.checkAddPowerSupply)
                CustomAddToBuildButtonWidget(
                  label: 'Power Supply',
                  onPressed: () {
                    selectedComponentForBuildNotifier
                        .setModelName("power_supply");
                    Navigator.pushNamed(
                      context,
                      RouteNames.listComponentPage,
                    );
                  },
                )
              else
                CustomSelectedComponentButtonWidget(
                  imagePath: 'assets/icons/power_supply.png',
                  //ignore: avoid_dynamic_calls
                  nameComponent: selectedComponentForBuildNotifier
                      .addToBuildPcComponents["power_supply"]?.name
                      .toString() ??
                      '',
                  onPressed: () {
                    Provider.of<ComponentsForBuildPcNotifier>(
                      context,
                      listen: false,
                    ).deletePowerSupplyListBuildPcComponents(
                      _buildPcNotifier.buildPc?.id,
                    );
                    selectedComponentForBuildNotifier
                        .removeFromComparison("power_supply");
                  },
                  modelName: 'power_supply',
                ),
              if (selectedComponentForBuildNotifier.checkAddCase)
                CustomAddToBuildButtonWidget(
                  label: 'Case',
                  onPressed: () {
                    selectedComponentForBuildNotifier.setModelName("case");
                    Navigator.pushNamed(
                      context,
                      RouteNames.listComponentPage,
                    );
                  },
                )
              else
                CustomSelectedComponentButtonWidget(
                  imagePath: 'assets/icons/case.png',
                  //ignore: avoid_dynamic_calls
                  nameComponent: selectedComponentForBuildNotifier
                          .addToBuildPcComponents["case"]?.name
                          .toString() ??
                      '',
                  onPressed: () {
                    Provider.of<ComponentsForBuildPcNotifier>(
                      context,
                      listen: false,
                    ).deletePowerSupplyListBuildPcComponents(
                      _buildPcNotifier.buildPc?.id,
                    );
                    selectedComponentForBuildNotifier
                        .removeFromComparison("case");
                  },
                  modelName: 'case',
                ),
            ],
          ),
        ),
      ),
    );
  }
}
