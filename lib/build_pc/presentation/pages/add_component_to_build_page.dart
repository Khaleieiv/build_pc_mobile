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
import 'package:ez_localization/ez_localization.dart';
import 'package:flutter/material.dart';
import 'package:panara_dialogs/panara_dialogs.dart';
import 'package:provider/provider.dart';

class AddComponentToBuildPage extends StatefulWidget {
  const AddComponentToBuildPage({Key? key}) : super(key: key);

  @override
  State<AddComponentToBuildPage> createState() =>
      _AddComponentToBuildPageState();
}

class _AddComponentToBuildPageState extends State<AddComponentToBuildPage> {
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

    void showMessageDialog(String message) {
      PanaraInfoDialog.show(
        context,
        title: context.getString(
          'build_pc.add_component.oops',
        ),
        message: message,
        buttonText: context.getString(
          'build_pc.add_component.okay',
        ),
        onTapDismiss: () {
          Navigator.pop(context);
        },
        textColor: AppColors.blackColor,
        panaraDialogType: PanaraDialogType.warning,
      );
    }

    final provider = Provider.of<ComponentsForBuildPcNotifier>(
      context,
      listen: false,
    );

    Future<void> deleteCpu() async {
      final id = int.parse(
        selectedComponentForBuildNotifier.addToBuildPcComponents["id"]
            .toString(),
      );
      await provider.deleteCpuListBuildPcComponents(
        id,
      );
      await selectedComponentForBuildNotifier.removeFromComparison("processor");
      if (!mounted) return;
      final price = await buildPcNotifier.getBuildPcUserComponents(id);
      await selectedComponentForBuildNotifier.addToComparison(
        "priceBuild",
        price,
      );
      if (!selectedComponentForBuildNotifier.checkAddMotherboard) {
        selectedComponentForBuildNotifier.checkAddMotherboard = true;
        selectedComponentForBuildNotifier.checkAddCooler = true;
        selectedComponentForBuildNotifier.checkAddMemory = true;
        selectedComponentForBuildNotifier.checkAddPowerSupply = true;
        selectedComponentForBuildNotifier.checkAddCase = true;
        await provider.deletePcCaseListBuildPcComponents(
          id,
        );
        await selectedComponentForBuildNotifier.removeFromComparison("case");
        await provider.deletePowerSupplyListBuildPcComponents(
          id,
        );
        await selectedComponentForBuildNotifier
            .removeFromComparison("power_supply");
        await provider.deleteRamListBuildPcComponents(
          id,
        );
        await selectedComponentForBuildNotifier.removeFromComparison("memory");
        await provider.deleteCoolerListBuildPcComponents(
          id,
        );
        await selectedComponentForBuildNotifier.removeFromComparison("cooler");
        await provider.deleteMotherboardListBuildPcComponents(
          id,
        );
        await selectedComponentForBuildNotifier
            .removeFromComparison("motherboard");
      }
    }

    Future<void> deleteMotherboard() async {
      final id = int.parse(
        selectedComponentForBuildNotifier.addToBuildPcComponents["id"]
            .toString(),
      );
      await provider.deleteMotherboardListBuildPcComponents(
        id,
      );
      await selectedComponentForBuildNotifier
          .removeFromComparison("motherboard");
      if (!mounted) return;
      final price = await buildPcNotifier.getBuildPcUserComponents(id);
      await selectedComponentForBuildNotifier.addToComparison(
        "priceBuild",
        price,
      );
      if (!selectedComponentForBuildNotifier.checkAddCooler) {
        selectedComponentForBuildNotifier.checkAddCooler = true;
        selectedComponentForBuildNotifier.checkAddMemory = true;
        selectedComponentForBuildNotifier.checkAddPowerSupply = true;
        selectedComponentForBuildNotifier.checkAddCase = true;
        await provider.deletePcCaseListBuildPcComponents(
          id,
        );
        await selectedComponentForBuildNotifier.removeFromComparison("case");
        await provider.deletePowerSupplyListBuildPcComponents(
          id,
        );
        await selectedComponentForBuildNotifier
            .removeFromComparison("power_supply");
        await provider.deleteRamListBuildPcComponents(
          id,
        );
        await selectedComponentForBuildNotifier.removeFromComparison("memory");
        await provider.deleteCoolerListBuildPcComponents(
          id,
        );
        await selectedComponentForBuildNotifier.removeFromComparison("cooler");
      }
    }

    Future<void> updatePriceBuild(int id) async {
      // final id = int.parse(
      //   selectedComponentForBuildNotifier.addToBuildPcComponents["id"]
      //       .toString(),
      // );
      final price = await buildPcNotifier.getBuildPcUserComponents(id);
      await selectedComponentForBuildNotifier.addToComparison(
        "priceBuild",
        price,
      );
    }

    const fontSizeContainer = 24.0;
    const fontFamily = 'Lexend Deca';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        leading: CustomIconButtonRoutePage(
          icon: Icons.arrow_back,
          sizeIcon: sizeIcon,
          onPressed: () {
            final id = int.parse(
              selectedComponentForBuildNotifier.addToBuildPcComponents["id"]
                  .toString(),
            );
            selectedComponentForBuildNotifier.clearSwapButton(
              clear: true,
            );
            if (selectedComponentForBuildNotifier.checkButtonBuild == true) {
              buildPcNotifier.deleteBuildPcUserListComponents(id);
            }
            Navigator.pop(context);
          },
        ),
        actions: const [
          CustomAlertDialogWidget(),
        ],
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${context.getString(
                    'build_pc.add_component.total_price',
                  )}: ${selectedComponentForBuildNotifier.
                  addToBuildPcComponents["priceBuild"]}',
                  style: const TextStyle(
                    fontFamily: fontFamily,
                    fontWeight: FontWeight.w600,
                    fontSize: fontSizeContainer,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.zero,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    if (selectedComponentForBuildNotifier.checkAddProcessor)
                      CustomAddToBuildButtonWidget(
                        label: context.getString(
                          'build_pc.add_component.cpu',
                        ),
                        onPressed: () {
                          selectedComponentForBuildNotifier
                              .setModelName("processor");
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
                        onPressed: deleteCpu,
                        modelName: 'processor',
                      ),
                    if (selectedComponentForBuildNotifier.checkAddMotherboard)
                      CustomAddToBuildButtonWidget(
                        label: context.getString(
                          'build_pc.add_component.motherboard',
                        ),
                        onPressed: () {
                          if (!selectedComponentForBuildNotifier
                              .checkAddProcessor) {
                            selectedComponentForBuildNotifier
                                .setModelName("motherboard");
                            Navigator.pushNamed(
                              context,
                              RouteNames.listComponentPage,
                            );
                          } else {
                            showMessageDialog(
                              context.getString(
                                'build_pc.add_component.check_pr',
                              ),
                            );
                          }
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
                        onPressed: deleteMotherboard,
                        modelName: 'motherboard',
                      ),
                    if (selectedComponentForBuildNotifier.checkAddCooler)
                      CustomAddToBuildButtonWidget(
                        label: context.getString(
                          'build_pc.add_component.cooler',
                        ),
                        onPressed: () {
                          if (!selectedComponentForBuildNotifier
                              .checkAddMotherboard) {
                            selectedComponentForBuildNotifier
                                .setModelName("cooler");
                            Navigator.pushNamed(
                              context,
                              RouteNames.listComponentPage,
                            );
                          } else {
                            showMessageDialog(
                              context.getString(
                                'build_pc.add_component.check_m',
                              ),
                            );
                          }
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
                        onPressed: () async {
                          final id = int.parse(
                            selectedComponentForBuildNotifier
                                .addToBuildPcComponents["id"]
                                .toString(),
                          );
                          await Provider.of<ComponentsForBuildPcNotifier>(
                            context,
                            listen: false,
                          ).deleteCoolerListBuildPcComponents(
                            id,
                          );
                          await updatePriceBuild(id);
                          await selectedComponentForBuildNotifier
                              .removeFromComparison("cooler");
                        },
                        modelName: 'cooler',
                      ),
                    if (selectedComponentForBuildNotifier.checkAddGPU)
                      CustomAddToBuildButtonWidget(
                        label: context.getString(
                          'build_pc.add_component.gpu',
                        ),
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
                        onPressed: () async {
                          final id = int.parse(
                            selectedComponentForBuildNotifier
                                .addToBuildPcComponents["id"]
                                .toString(),
                          );
                          await Provider.of<ComponentsForBuildPcNotifier>(
                            context,
                            listen: false,
                          ).deleteGpuListBuildPcComponents(id);
                          await updatePriceBuild(id);
                          await selectedComponentForBuildNotifier
                              .removeFromComparison("graphic_card");
                        },
                        modelName: 'graphic_card',
                      ),
                    if (selectedComponentForBuildNotifier.checkAddMemory)
                      CustomAddToBuildButtonWidget(
                        label: context.getString(
                          'build_pc.add_component.ram',
                        ),
                        onPressed: () {
                          if (!selectedComponentForBuildNotifier
                              .checkAddMotherboard) {
                            selectedComponentForBuildNotifier
                                .setModelName("memory");
                            Navigator.pushNamed(
                              context,
                              RouteNames.listComponentPage,
                            );
                          } else {
                            showMessageDialog(
                              context.getString(
                                'build_pc.add_component.check_m',
                              ),
                            );
                          }
                        },
                      )
                    else
                      CustomSelectedComponentButtonWidget(
                        imagePath: 'assets/icons/memory.png',
                        //ignore: avoid_dynamic_calls
                        nameComponent: '$ram',
                        onPressed: () async {
                          final id = int.parse(
                            selectedComponentForBuildNotifier
                                .addToBuildPcComponents["id"]
                                .toString(),
                          );
                          await Provider.of<ComponentsForBuildPcNotifier>(
                            context,
                            listen: false,
                          ).deleteRamListBuildPcComponents(
                            id,
                          );
                          await selectedComponentForBuildNotifier
                              .removeFromComparison("memory");
                          await updatePriceBuild(id);
                        },
                        modelName: 'memory',
                      ),
                    if (selectedComponentForBuildNotifier.checkAddHdd)
                      CustomAddToBuildButtonWidget(
                        label: context.getString('build_pc.add_component.hdd'),
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
                        onPressed: () async {
                          final id = int.parse(
                            selectedComponentForBuildNotifier
                                .addToBuildPcComponents["id"]
                                .toString(),
                          );
                          await Provider.of<ComponentsForBuildPcNotifier>(
                            context,
                            listen: false,
                          ).deleteHddListBuildPcComponents(
                            id,
                          );
                          await updatePriceBuild(id);
                          await selectedComponentForBuildNotifier
                              .removeFromComparison("hdd");
                        },
                        modelName: 'hdd',
                      ),
                    if (selectedComponentForBuildNotifier.checkAddSsd)
                      CustomAddToBuildButtonWidget(
                        label: context.getString(
                          'build_pc.add_component.ssd',
                        ),
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
                        onPressed: () async {
                          final id = int.parse(
                            selectedComponentForBuildNotifier
                                .addToBuildPcComponents["id"]
                                .toString(),
                          );
                          await Provider.of<ComponentsForBuildPcNotifier>(
                            context,
                            listen: false,
                          ).deleteSsdListBuildPcComponents(
                            id,
                          );
                          await updatePriceBuild(id);
                          await selectedComponentForBuildNotifier
                              .removeFromComparison("ssd");
                        },
                        modelName: 'ssd',
                      ),
                    if (selectedComponentForBuildNotifier.checkAddPowerSupply)
                      CustomAddToBuildButtonWidget(
                        label: context.getString(
                          'build_pc.add_component.power_supply',
                        ),
                        onPressed: () {
                          if (!selectedComponentForBuildNotifier.checkAddHdd ||
                              !selectedComponentForBuildNotifier.checkAddSsd) {
                            selectedComponentForBuildNotifier
                                .setModelName("power_supply");
                            Navigator.pushNamed(
                              context,
                              RouteNames.listComponentPage,
                            );
                          } else {
                            showMessageDialog(
                                context.getString(
                                  'build_pc.add_component.check_d',
                                ),
                            );
                          }
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
                        onPressed: () async {
                          final id = int.parse(
                            selectedComponentForBuildNotifier
                                .addToBuildPcComponents["id"]
                                .toString(),
                          );
                          await Provider.of<ComponentsForBuildPcNotifier>(
                            context,
                            listen: false,
                          ).deletePowerSupplyListBuildPcComponents(
                            id,
                          );
                          await updatePriceBuild(id);
                          await selectedComponentForBuildNotifier
                              .removeFromComparison("power_supply");
                        },
                        modelName: 'power_supply',
                      ),
                    if (selectedComponentForBuildNotifier.checkAddCase)
                      CustomAddToBuildButtonWidget(
                        label: context.getString(
                          'build_pc.add_component.case',
                        ),
                        onPressed: () {
                          if (!selectedComponentForBuildNotifier
                              .checkAddPowerSupply) {
                            selectedComponentForBuildNotifier
                                .setModelName("case");
                            Navigator.pushNamed(
                              context,
                              RouteNames.listComponentPage,
                            );
                          } else {
                            showMessageDialog(
                              context.getString(
                                'build_pc.add_component.check_p',
                              ),
                            );
                          }
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
                        onPressed: () async {
                          final id = int.parse(
                            selectedComponentForBuildNotifier
                                .addToBuildPcComponents["id"]
                                .toString(),
                          );
                          await Provider.of<ComponentsForBuildPcNotifier>(
                            context,
                            listen: false,
                          ).deletePowerSupplyListBuildPcComponents(
                            id,
                          );
                          await updatePriceBuild(id);
                          await selectedComponentForBuildNotifier
                              .removeFromComparison("case");
                        },
                        modelName: 'case',
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
