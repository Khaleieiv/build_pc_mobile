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
import 'package:flutter/material.dart';
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
  Widget build(BuildContext context) {
    final selectedComponentForBuildNotifier =
        Provider.of<SelectedComponentForBuildNotifier>(context, listen: false);

    final nameBuild =
        selectedComponentForBuildNotifier.addToBuildPcComponents["nameBuild"];
    final _name = nameBuild != null ? nameBuild.toString() : "Draft";

    _textFieldController.value = TextEditingValue(
      text: _name,
      selection: TextSelection.fromPosition(
        TextPosition(offset: _name.length),
      ),
    );

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

    return check
        ? showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('Enter the build name'),
                content: TextField(
                  onChanged: (value) {
                    setState(() {
                      selectedComponentForBuildNotifier.addToComparison(
                        "nameBuild",
                        value,
                      );
                    });
                  },
                  textInputAction: TextInputAction.next,
                  controller: _textFieldController,
                  decoration: InputDecoration(
                    hintText: selectedComponentForBuildNotifier
                        .addToBuildPcComponents["nameBuild"]
                        .toString(),
                    labelText: "Name build",
                  ),
                ),
                actions: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MaterialButton(
                        color: Colors.red,
                        textColor: Colors.white,
                        child: const Text('Cancel'),
                        onPressed: () {
                          setState(() {
                            Navigator.pop(context);
                          });
                        },
                      ),
                      MaterialButton(
                        color: Colors.green,
                        textColor: Colors.white,
                        onPressed: pressSave,
                        child: const Text('Ok'),
                      ),
                    ],
                  ),
                ],
              );
            },
          )
        : PanaraInfoDialog.show(
            context,
            title: "Oops",
            message: "You cannot create an empty assembly",
            buttonText: "Okay",
            onTapDismiss: () {
              Navigator.pop(context);
            },
            textColor: AppColors.blackColor,
            panaraDialogType: PanaraDialogType.warning,
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
      totalPrice: 0,
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

    if (!mounted) return;
    Navigator.popUntil(
      context,
      ModalRoute.withName('/home'),
    );
  }
}
