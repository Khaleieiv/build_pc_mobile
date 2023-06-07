import 'package:build_pc_mobile/auth/presentation/state/auth_notifier.dart';
import 'package:build_pc_mobile/build_pc/domain/entities/build_pc.dart';
import 'package:build_pc_mobile/build_pc/presentation/state/build_pc_notifier.dart';
import 'package:build_pc_mobile/build_pc/presentation/state/selected_component_for_build_notifier.dart';
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
import 'package:provider/provider.dart';

class CustomAlertDialogWidget extends StatefulWidget {
  const CustomAlertDialogWidget({Key? key}) : super(key: key);

  @override
  State<CustomAlertDialogWidget> createState() =>
      _CustomAlertDialogWidgetState();
}

class _CustomAlertDialogWidgetState extends State<CustomAlertDialogWidget> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _textFieldController = TextEditingController();

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
    final buildPcNotifier =
        Provider.of<BuildPcNotifier>(context, listen: false);
    final authNotifier = Provider.of<AuthNotifier>(context, listen: false);

    return showDialog(
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
            controller: _textFieldController,
            decoration: const InputDecoration(hintText: "Name build"),
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
                  child: const Text('Ok'),
                  onPressed: () {
                    setState(() {
                      final buildPc = BuildPc(
                        id: buildPcNotifier.buildPc?.id,
                        nameOfBuild: selectedComponentForBuildNotifier
                            .addToBuildPcComponents["nameBuild"]
                            .toString(),
                        user: authNotifier.currentUser,
                        motherboard: selectedComponentForBuildNotifier
                                .addToBuildPcComponents["motherboard"]
                            as Motherboard?,
                        cpu: selectedComponentForBuildNotifier
                            .addToBuildPcComponents["processor"] as CPU?,
                        gpu: selectedComponentForBuildNotifier
                            .addToBuildPcComponents["graphic_card"] as GPU?,
                        ram: selectedComponentForBuildNotifier
                            .addToBuildPcComponents["memory"] as List<Ram>?,
                        powerSupply: selectedComponentForBuildNotifier
                                .addToBuildPcComponents["power_supply"]
                            as PowerSupply?,
                        hdd: selectedComponentForBuildNotifier
                            .addToBuildPcComponents["hdd"] as List<Hdd>?,
                        ssd: selectedComponentForBuildNotifier
                            .addToBuildPcComponents["ssd"] as List<Ssd>?,
                        pcCase: selectedComponentForBuildNotifier
                            .addToBuildPcComponents["case"] as PcCase?,
                        cooler: selectedComponentForBuildNotifier
                            .addToBuildPcComponents["cooler"] as Cooler?,
                        countOfLikes: 0,
                        ratingId: null,
                        totalPrice: 0,
                      );
                      buildPcNotifier.updateBuildPcUserComponents(
                        buildPc,
                        buildPcNotifier.buildPc?.id,
                      );

                      Navigator.popUntil(context, ModalRoute.withName('/home'));

                    });
                  },
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
