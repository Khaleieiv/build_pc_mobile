import 'package:build_pc_mobile/common/presentation/state/ram_notifier.dart';
import 'package:build_pc_mobile/common/widgets/custom_no_data_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/state/component_comparison_notifier.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_add_to_comparison_button_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_component_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_remove_to_comparison_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

class RamListWidget extends StatefulWidget {
  const RamListWidget({Key? key}) : super(key: key);

  @override
  State<RamListWidget> createState() => _RamListWidgetState();
}

class _RamListWidgetState extends State<RamListWidget> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Provider.of<RamNotifier>(context, listen: false).fetchRam();
    });
  }

  @override
  Widget build(BuildContext context) {
    final ramProvider = Provider.of<RamNotifier>(context);
    final componentComparisonProvider =
        Provider.of<ComponentComparisonNotifier>(context);

    return ramProvider.isLoading
        ? ListView.builder(
            itemCount: ramProvider.listRam?.length,
            itemBuilder: (BuildContext context, int index) {
              final ram = ramProvider.listRam?[index];
              Widget? result;
              if (ram != null) {
                result = CustomComponentWidget(
                  imagePath: 'assets/icons/memory.png',
                  name: ram.name,
                  labelTextNameFirst: 'Frequency',
                  labelTextComponentFirst: ram.frequency.toString(),
                  labelTextNameSecond: 'Memory capacity',
                  labelTextComponentSecond: ram.memoryCapacity.toString(),
                  labelTextNameThird: 'Recommended price',
                  labelTextComponentThird: ram.recommendedPrice.toString(),
                  labelTextNameFourth: 'Power supply voltage',
                  labelTextComponentFourth: ram.powerSupplyVoltage.toString(),
                  labelTextNameFifth: 'Memory type',
                  labelTextComponentFifth: ram.ramMemoryType.name,
                  button: componentComparisonProvider.swapButton
                      ? CustomAddToComparisonButtonWidget(
                          onPressed: () {
                            setState(() {
                              componentComparisonProvider.addToComparison(
                                componentComparisonProvider.modelName,
                                ram,
                              );
                            });
                          },
                        )
                      : CustomRemoveToComparisonButtonWidget(
                          onPressed: () {
                            setState(() {
                              componentComparisonProvider.removeFromComparison(
                                componentComparisonProvider.modelName,
                                ram,
                              );
                            });
                          },
                        ),
                );
              }

              return result;
            },
          )
        : const CustomNoDataWidget(
            text: 'There is no data on these components in the database.',
          );
  }
}
