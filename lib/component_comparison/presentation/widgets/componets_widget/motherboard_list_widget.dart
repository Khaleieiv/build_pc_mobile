import 'package:build_pc_mobile/common/presentation/state/motherboard_notifier.dart';
import 'package:build_pc_mobile/common/widgets/custom_no_data_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/state/component_comparison_notifier.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_add_to_comparison_button_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_component_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_remove_to_comparison_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

class MotherboardListWidget extends StatefulWidget {
  const MotherboardListWidget({Key? key}) : super(key: key);

  @override
  State<MotherboardListWidget> createState() => _MotherboardListWidgetState();
}

class _MotherboardListWidgetState extends State<MotherboardListWidget> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Provider.of<MotherboardNotifier>(context, listen: false)
          .fetchMotherboard();
    });
  }

  @override
  Widget build(BuildContext context) {
    final motherboardProvider = Provider.of<MotherboardNotifier>(context);
    final componentComparisonProvider =
        Provider.of<ComponentComparisonNotifier>(context);

    return motherboardProvider.isLoading
        ? ListView.builder(
            itemCount: motherboardProvider.listMotherboard?.length,
            itemBuilder: (BuildContext context, int index) {
              final motherboard = motherboardProvider.listMotherboard?[index];
              Widget? result;
              if (motherboard != null) {
                result = CustomComponentWidget(
                  imagePath: 'assets/icons/motherboard.png',
                  name: motherboard.name,
                  labelTextNameFirst: 'Max amount of Ram',
                  labelTextComponentFirst:
                      motherboard.maxAmountOfRam.toString(),
                  labelTextNameSecond: 'Memory slots',
                  labelTextComponentSecond: motherboard.memorySlots.toString(),
                  labelTextNameThird: 'Max TDP',
                  labelTextComponentThird:
                      motherboard.maxTdpOfProcessors.toString(),
                  labelTextNameFourth: 'Supported memory frequency',
                  labelTextComponentFourth:
                      motherboard.supportedMemoryFrequency.toString(),
                  labelTextNameFifth: 'Recommended price',
                  labelTextComponentFifth:
                      motherboard.recommendedPrice.toString(),
                  button: componentComparisonProvider.swapButton
                      ? CustomAddToComparisonButtonWidget(
                          onPressed: () {
                            setState(() {
                              componentComparisonProvider.addToComparison(
                                componentComparisonProvider.modelName,
                                motherboard,
                              );
                            });
                          },
                        )
                      : CustomRemoveToComparisonButtonWidget(
                          onPressed: () {
                            setState(() {
                              componentComparisonProvider.removeFromComparison(
                                componentComparisonProvider.modelName,
                                motherboard,
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
