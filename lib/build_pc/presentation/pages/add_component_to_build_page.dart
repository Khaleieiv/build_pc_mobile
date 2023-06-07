import 'package:build_pc_mobile/build_pc/presentation/state/build_pc_notifier.dart';
import 'package:build_pc_mobile/build_pc/presentation/state/selected_component_for_build_notifier.dart';
import 'package:build_pc_mobile/build_pc/presentation/widgets/custom_add_to_build_button_widget.dart';
import 'package:build_pc_mobile/build_pc/presentation/widgets/custom_alert_dialog_widget.dart';
import 'package:build_pc_mobile/build_pc/presentation/widgets/custom_selected_component_button_widget.dart';
import 'package:build_pc_mobile/common/constants/app_colors.dart';
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

    const sizeIcon = 25.0;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        leading: CustomIconButtonRoutePage(
          icon: Icons.arrow_back,
          sizeIcon: sizeIcon,
          onPressed: () {
            _buildPcNotifier
                .deleteBuildPcUserListComponents(_buildPcNotifier.buildPc?.id);
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
                    Navigator.pushNamed(
                      context,
                      RouteNames.listComponentPage,
                    );
                  },
                )
              else
                CustomSelectedComponentButtonWidget(
                  imagePath: 'assets/icons/cpu.png',
                  modelName: "processor",
                  //ignore: avoid_dynamic_calls
                  nameComponent: selectedComponentForBuildNotifier
                          .addToBuildPcComponents["processor"]?.name
                          .toString() ??
                      '',
                ),
              if (selectedComponentForBuildNotifier.checkAddMotherboard)
                CustomAddToBuildButtonWidget(
                  label: 'Motherboard',
                  onPressed: () {
                    //TODO
                  },
                )
              else
                CustomSelectedComponentButtonWidget(
                  imagePath: 'assets/icons/motherboard.png',
                  nameComponent: '',
                  onPressed: () {
                    //TODO
                  },
                  modelName: '',
                ),
              if (selectedComponentForBuildNotifier.checkAddCooler)
                CustomAddToBuildButtonWidget(
                  label: 'Cooler',
                  onPressed: () {
                    //TODO
                  },
                )
              else
                CustomSelectedComponentButtonWidget(
                  imagePath: 'assets/icons/fan.png',
                  nameComponent: '',
                  onPressed: () {
                    //TODO
                  },
                  modelName: '',
                ),
              if (selectedComponentForBuildNotifier.checkAddGPU)
                CustomAddToBuildButtonWidget(
                  label: 'Graphic Card',
                  onPressed: () {
                    //TODO
                  },
                )
              else
                CustomSelectedComponentButtonWidget(
                  imagePath: 'assets/icons/gpu.png',
                  nameComponent: '',
                  onPressed: () {
                    //TODO
                  },
                  modelName: '',
                ),
              if (selectedComponentForBuildNotifier.checkAddMemory)
                CustomAddToBuildButtonWidget(
                  label: 'Memory',
                  onPressed: () {
                    //TODO
                  },
                )
              else
                CustomSelectedComponentButtonWidget(
                  imagePath: 'assets/icons/ram.png',
                  nameComponent: '',
                  onPressed: () {
                    //TODO
                  },
                  modelName: '',
                ),
              if (selectedComponentForBuildNotifier.checkAddHdd)
                CustomAddToBuildButtonWidget(
                  label: 'Hdd',
                  onPressed: () {
                    //TODO
                  },
                )
              else
                CustomSelectedComponentButtonWidget(
                  imagePath: 'assets/icons/hdd.png',
                  nameComponent: '',
                  onPressed: () {
                    //TODO
                  },
                  modelName: '',
                ),
              if (selectedComponentForBuildNotifier.checkAddSsd)
                CustomAddToBuildButtonWidget(
                  label: 'Ssd',
                  onPressed: () {
                    //TODO
                  },
                )
              else
                CustomSelectedComponentButtonWidget(
                  imagePath: 'assets/icons/ssd.png',
                  nameComponent: '',
                  onPressed: () {
                    //TODO
                  },
                  modelName: '',
                ),
              if (selectedComponentForBuildNotifier.checkAddPowerSupply)
                CustomAddToBuildButtonWidget(
                  label: 'Power Supply',
                  onPressed: () {
                    //TODO
                  },
                )
              else
                CustomSelectedComponentButtonWidget(
                  imagePath: 'assets/icons/power_supply.png',
                  nameComponent: '',
                  onPressed: () {
                    //TODO
                  },
                  modelName: '',
                ),
              if (selectedComponentForBuildNotifier.checkAddCase)
                CustomAddToBuildButtonWidget(
                  label: 'Case',
                  onPressed: () {
                    //TODO
                  },
                )
              else
                CustomSelectedComponentButtonWidget(
                  imagePath: 'assets/icons/case.png',
                  nameComponent: '',
                  onPressed: () {
                    //TODO
                  },
                  modelName: '',
                ),
            ],
          ),
        ),
      ),
    );
  }
}
