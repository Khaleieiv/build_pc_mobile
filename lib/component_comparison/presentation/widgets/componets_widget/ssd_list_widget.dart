import 'package:build_pc_mobile/common/presentation/state/ssd_notifier.dart';
import 'package:build_pc_mobile/common/widgets/custom_no_data_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/state/component_comparison_notifier.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_add_to_comparison_button_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_component_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_remove_to_comparison_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

class SsdListWidget extends StatefulWidget {
  const SsdListWidget({Key? key}) : super(key: key);

  @override
  State<SsdListWidget> createState() => _SsdListWidgetState();
}

class _SsdListWidgetState extends State<SsdListWidget> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Provider.of<SsdNotifier>(context, listen: false).fetchSsd();
    });
  }

  @override
  Widget build(BuildContext context) {
    final ssdProvider = Provider.of<SsdNotifier>(context);
    final componentComparisonProvider =
        Provider.of<ComponentComparisonNotifier>(context);

    return ssdProvider.isLoading
        ? ListView.builder(
            itemCount: ssdProvider.listSsd?.length,
            itemBuilder: (BuildContext context, int index) {
              final ssd = ssdProvider.listSsd?[index];
              Widget? result;
              if (ssd != null) {
                result = CustomComponentWidget(
                  imagePath: 'assets/icons/ssd.png',
                  name: ssd.name,
                  labelTextNameFirst: 'Reading speed',
                  labelTextComponentFirst: ssd.readingSpeed.toString(),
                  labelTextNameSecond: 'Storage size',
                  labelTextComponentSecond: ssd.storageSize.toString(),
                  labelTextNameThird: 'Writing speed',
                  labelTextComponentThird: ssd.writingSpeed.toString(),
                  labelTextNameFourth: 'Buffer size',
                  labelTextComponentFourth: ssd.bufferSize.toString(),
                  labelTextNameFifth: 'Recommended price',
                  labelTextComponentFifth: ssd.recommendedPrice.toString(),
                  button: componentComparisonProvider.swapButton
                      ? CustomAddToComparisonButtonWidget(
                          onPressed: () {
                            setState(() {
                              componentComparisonProvider.addToComparison(
                                componentComparisonProvider.modelName,
                                ssd,
                              );
                            });
                          },
                        )
                      : CustomRemoveToComparisonButtonWidget(
                          onPressed: () {
                            setState(() {
                              componentComparisonProvider.removeFromComparison(
                                componentComparisonProvider.modelName,
                                ssd,
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
