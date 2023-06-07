import 'package:build_pc_mobile/common/presentation/state/pc_case_notifier.dart';
import 'package:build_pc_mobile/common/widgets/custom_no_data_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/state/component_comparison_notifier.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_add_to_comparison_button_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_component_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_remove_to_comparison_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

class PcCaseListWidget extends StatefulWidget {
  const PcCaseListWidget({Key? key}) : super(key: key);

  @override
  State<PcCaseListWidget> createState() => _PcCaseListWidgetState();
}

class _PcCaseListWidgetState extends State<PcCaseListWidget> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Provider.of<PcCaseNotifier>(context, listen: false).fetchPcCase();
    });
  }

  @override
  Widget build(BuildContext context) {
    final pcCaseProvider = Provider.of<PcCaseNotifier>(context);
    final componentComparisonProvider =
        Provider.of<ComponentComparisonNotifier>(context);

    return pcCaseProvider.isLoading
        ? ListView.builder(
            itemCount: pcCaseProvider.listPcCase?.length,
            itemBuilder: (BuildContext context, int index) {
              final pcCase = pcCaseProvider.listPcCase?[index];
              Widget? result;
              if (pcCase != null) {
                result = CustomComponentWidget(
                  imagePath: 'assets/icons/power_supply.png',
                  name: pcCase.name,
                  labelTextNameFirst: 'Fans included',
                  labelTextComponentFirst: pcCase.fansIncluded.toString(),
                  labelTextNameSecond: 'Performance level',
                  labelTextComponentSecond:
                      '${pcCase.performanceLevel?.name}',
                  labelTextNameThird: 'Recommended price',
                  labelTextComponentThird: pcCase.recommendedPrice.toString(),
                  labelTextNameFourth: 'Power supply form factor',
                  labelTextComponentFourth: pcCase.casePowerSupplyLocation.name,
                  labelTextNameFifth: 'Max length of GPU',
                  labelTextComponentFifth:
                      pcCase.maxLengthOfGraphicCard.toString(),
                  button: componentComparisonProvider.swapButton
                      ? CustomAddToComparisonButtonWidget(
                          onPressed: () {
                            setState(() {
                              componentComparisonProvider.addToComparison(
                                componentComparisonProvider.modelName,
                                pcCase,
                              );
                            });
                          },
                        )
                      : CustomRemoveToComparisonButtonWidget(
                          onPressed: () {
                            setState(() {
                              componentComparisonProvider.removeFromComparison(
                                componentComparisonProvider.modelName,
                                pcCase,
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
