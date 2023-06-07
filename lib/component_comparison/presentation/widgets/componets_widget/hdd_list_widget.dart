import 'package:build_pc_mobile/common/presentation/state/hdd_notifier.dart';
import 'package:build_pc_mobile/common/widgets/custom_no_data_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/state/component_comparison_notifier.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_add_to_comparison_button_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_component_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_remove_to_comparison_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

class HddListWidget extends StatefulWidget {
  const HddListWidget({Key? key}) : super(key: key);

  @override
  State<HddListWidget> createState() => _HddListWidgetState();
}

class _HddListWidgetState extends State<HddListWidget> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Provider.of<HddNotifier>(context, listen: false).fetchHdd();
    });
  }

  @override
  Widget build(BuildContext context) {
    final hddProvider = Provider.of<HddNotifier>(context);
    final componentComparisonProvider =
        Provider.of<ComponentComparisonNotifier>(context);

    return hddProvider.isLoading
        ? ListView.builder(
            itemCount: hddProvider.listHdd?.length,
            itemBuilder: (BuildContext context, int index) {
              final hdd = hddProvider.listHdd?[index];
              Widget? result;
              if (hdd != null) {
                result = CustomComponentWidget(
                  imagePath: 'assets/icons/hdd.png',
                  name: hdd.name,
                  labelTextNameFirst: 'Reading speed',
                  labelTextComponentFirst: hdd.readingSpeed.toString(),
                  labelTextNameSecond: 'Storage size',
                  labelTextComponentSecond: hdd.storageSize.toString(),
                  labelTextNameThird: 'Writing speed',
                  labelTextComponentThird: hdd.writingSpeed.toString(),
                  labelTextNameFourth: 'Buffer size',
                  labelTextComponentFourth: hdd.bufferSize.toString(),
                  labelTextNameFifth: 'Recommended price',
                  labelTextComponentFifth: hdd.recommendedPrice.toString(),
                  button: componentComparisonProvider.swapButton
                      ? CustomAddToComparisonButtonWidget(
                          onPressed: () {
                            setState(() {
                              componentComparisonProvider.addToComparison(
                                componentComparisonProvider.modelName,
                                hdd,
                              );
                            });
                          },
                        )
                      : CustomRemoveToComparisonButtonWidget(
                          onPressed: () {
                            setState(() {
                              componentComparisonProvider.removeFromComparison(
                                componentComparisonProvider.modelName,
                                hdd,
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
