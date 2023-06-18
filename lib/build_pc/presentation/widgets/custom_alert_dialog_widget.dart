import 'package:build_pc_mobile/auth/presentation/state/auth_notifier.dart';
import 'package:build_pc_mobile/build_pc/domain/entities/build_pc.dart';
import 'package:build_pc_mobile/build_pc/presentation/state/build_pc_notifier.dart';
import 'package:build_pc_mobile/build_pc/presentation/state/selected_component_for_build_notifier.dart';
import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:build_pc_mobile/common/domain/entities/cooler/cooler.dart';
import 'package:build_pc_mobile/common/domain/entities/cpu/cpu.dart';
import 'package:build_pc_mobile/common/domain/entities/gpu/gpu.dart';
import 'package:build_pc_mobile/common/domain/entities/motherboard/motherboard.dart';
import 'package:build_pc_mobile/common/domain/entities/pc_case/pc_case.dart';
import 'package:build_pc_mobile/common/domain/entities/power_supply/power_supply.dart';
import 'package:build_pc_mobile/common/domain/entities/ram/ram.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/hdd/hdd.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/ssd/ssd.dart';
import 'package:ez_localization/ez_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:panara_dialogs/panara_dialogs.dart';
import 'package:provider/provider.dart';

class CustomAlertDialogWidget extends StatefulWidget {
  const CustomAlertDialogWidget({Key? key}) : super(key: key);

  @override
  State<CustomAlertDialogWidget> createState() =>
      _CustomAlertDialogWidgetState();
}

class _CustomAlertDialogWidgetState extends State<CustomAlertDialogWidget> {
  final _textFieldController = TextEditingController();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      final selectedComponentForBuildNotifier =
          Provider.of<SelectedComponentForBuildNotifier>(
        context,
        listen: false,
      );
      final nameBuild = selectedComponentForBuildNotifier
              .addToBuildPcComponents["nameBuild"] ??
          "Draft";
      _textFieldController.value = TextEditingValue(
        text: nameBuild.toString(),
        selection: TextSelection.fromPosition(
          TextPosition(offset: nameBuild.toString().length),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        _displayTextInputDialog(context, _textFieldController);
      },
      icon: const Icon(
        Icons.save,
      ),
    );
  }

  Future<void> _displayTextInputDialog(
    BuildContext context,
    TextEditingController _textFieldController,
  ) async {
    final selectedComponentForBuildNotifier =
        Provider.of<SelectedComponentForBuildNotifier>(context, listen: false);

    final check =
        selectedComponentForBuildNotifier.addToBuildPcComponents["processor"] !=
            null;
    if (!check) {
      PanaraInfoDialog.show(
        context,
        title: context.getString(
          'build_pc.alert_dialog.oops',
        ),
        message: context.getString(
          'build_pc.alert_dialog.empty_build',
        ),
        buttonText: context.getString(
          'build_pc.alert_dialog.okay',
        ),
        onTapDismiss: () {
          Navigator.pop(context);
        },
        textColor: AppColors.blackColor,
        panaraDialogType: PanaraDialogType.warning,
      );
    } else if (selectedComponentForBuildNotifier.checkAddMotherboard) {
      messageFail(context.getString("build_pc.add_component.motherboard"));
    } else if (selectedComponentForBuildNotifier.checkAddCooler) {
      messageFail(context.getString("build_pc.add_component.cooler"));
    } else if (selectedComponentForBuildNotifier.checkAddGPU) {
      messageFail(context.getString("build_pc.add_component.gpu"));
    } else if (selectedComponentForBuildNotifier.checkAddMemory) {
      messageFail(context.getString("build_pc.add_component.ram"));
    } else if (selectedComponentForBuildNotifier.checkAddHdd ||
        selectedComponentForBuildNotifier.checkAddSsd) {
      messageFail(context.getString("build_pc.add_component.disk"));
    } else if (selectedComponentForBuildNotifier.checkAddPowerSupply) {
      messageFail(context.getString("build_pc.add_component.power_supply"));
    } else if (selectedComponentForBuildNotifier.checkAddCase) {
      messageFail(context.getString("build_pc.add_component.case"));
    } else {
      await messageDialog(_textFieldController);
    }
  }

  void messageFail(String label) {
    PanaraConfirmDialog.show(
      context,
      title: context.getString("build_pc.alert_dialog.oops"),
      message: '${context.getString("build_pc.alert_dialog.build_fail")}$label',
      confirmButtonText: context.getString("build_pc.alert_dialog.okay"),
      cancelButtonText: context.getString("build_pc.alert_dialog.cancel"),
      textColor: AppColors.blackColor,
      onTapCancel: () {
        Navigator.pop(context);
      },
      onTapConfirm: () async {
        Navigator.pop(context);
        await messageDialog(_textFieldController);
      },
      panaraDialogType: PanaraDialogType.warning,
      barrierDismissible: false,
    );
  }

  Future<dynamic> messageDialog(TextEditingController textFieldController) {
    final selectedComponentForBuildNotifier =
        Provider.of<SelectedComponentForBuildNotifier>(context, listen: false);

    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            context.getString(
              'build_pc.alert_dialog.label',
            ),
          ),
          content: TextField(
            onChanged: (value) async {
              await selectedComponentForBuildNotifier.addToComparison(
                "nameBuild",
                value,
              );
            },
            textInputAction: TextInputAction.next,
            controller: textFieldController,
            decoration: InputDecoration(
              hintText: context.getString('build_pc.info.name_build'),
              labelText: context.getString('build_pc.info.name_build'),
            ),
          ),
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MaterialButton(
                  color: Colors.red,
                  textColor: Colors.white,
                  child: Text(
                    context.getString(
                      'build_pc.alert_dialog.cancel',
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                ),
                MaterialButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  onPressed: () async {
                    await pressSave();
                    if (!mounted) return;
                    Navigator.popUntil(
                      context,
                      ModalRoute.withName('/home'),
                    );
                  },
                  child: Text(
                    context.getString(
                      'build_pc.alert_dialog.ok',
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  Future<void> pressSave() async {
    final selectedComponentForBuildNotifier =
        Provider.of<SelectedComponentForBuildNotifier>(context, listen: false);
    final buildPcNotifier =
        Provider.of<BuildPcNotifier>(context, listen: false);
    final authNotifier = Provider.of<AuthNotifier>(context, listen: false);

    final buildPc = BuildPc(
      id: int.parse(
        selectedComponentForBuildNotifier.addToBuildPcComponents["id"]
            .toString(),
      ),
      name: selectedComponentForBuildNotifier
          .addToBuildPcComponents["nameBuild"]
          .toString(),
      user: authNotifier.currentUser,
      cpu: selectedComponentForBuildNotifier.addToBuildPcComponents["processor"]
          as CPU?,
      motherboard: selectedComponentForBuildNotifier
          .addToBuildPcComponents["motherboard"] as Motherboard?,
      cooler: selectedComponentForBuildNotifier.addToBuildPcComponents["cooler"]
          as Cooler?,
      gpu: selectedComponentForBuildNotifier
          .addToBuildPcComponents["graphic_card"] as GPU?,
      ram: selectedComponentForBuildNotifier.addToBuildPcComponents["memory"]
          as List<Ram>?,
      ssd: selectedComponentForBuildNotifier.addToBuildPcComponents["ssd"]
          as List<Ssd>?,
      hdd: selectedComponentForBuildNotifier.addToBuildPcComponents["hdd"]
          as List<Hdd>?,
      powerSupply: selectedComponentForBuildNotifier
          .addToBuildPcComponents["power_supply"] as PowerSupply?,
      pcCase: selectedComponentForBuildNotifier.addToBuildPcComponents["case"]
          as PcCase?,
      countOfLikes: 0,
      ratingId: null,
      totalPrice: int.parse(
        selectedComponentForBuildNotifier.addToBuildPcComponents["priceBuild"]
            .toString(),
      ),
    );
    await buildPcNotifier.updateBuildPcUserComponents(
      buildPc,
      int.parse(
        selectedComponentForBuildNotifier.addToBuildPcComponents["id"]
            .toString(),
      ),
    );
    await selectedComponentForBuildNotifier.clearAddToBuildPcComponents();
    await selectedComponentForBuildNotifier.clearSwapButton(clear: true);
  }
}
