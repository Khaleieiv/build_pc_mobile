import 'package:build_pc_mobile/common/presentation/state/cooler_notifier.dart';
import 'package:build_pc_mobile/common/widgets/custom_no_data_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/state/component_comparison_notifier.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_add_to_comparison_button_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_component_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_remove_to_comparison_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

class CoolerListWidget extends StatefulWidget {
  const CoolerListWidget({Key? key}) : super(key: key);

  @override
  State<CoolerListWidget> createState() => _CoolerListWidgetState();
}

class _CoolerListWidgetState extends State<CoolerListWidget> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Provider.of<CoolerNotifier>(context, listen: false).fetchCooler();
    });
  }

  @override
  Widget build(BuildContext context) {
    final coolerProvider = Provider.of<CoolerNotifier>(context);
    final componentComparisonProvider =
        Provider.of<ComponentComparisonNotifier>(context);

    return coolerProvider.isLoading
        ? ListView.builder(
            itemCount: coolerProvider.listCooler?.length,
            itemBuilder: (BuildContext context, int index) {
              final cooler = coolerProvider.listCooler?[index];
              Widget? result;
              if (cooler != null) {
                result = CustomComponentWidget(
                  imagePath: 'assets/icons/fan.png',
                  name: cooler.name,
                  labelTextNameFirst: 'Count of thermal tubes',
                  labelTextComponentFirst: cooler.thermalTubes.toString(),
                  labelTextNameSecond: 'Socket',
                  labelTextComponentSecond: cooler.coolerSocket.toString(),
                  labelTextNameThird: 'Max TDP',
                  labelTextComponentThird: cooler.maxTdp.toString(),
                  labelTextNameFourth: 'Cooler material',
                  labelTextComponentFourth: cooler.coolerMaterial.name,
                  labelTextNameFifth: 'Recommended price',
                  labelTextComponentFifth: cooler.recommendedPrice.toString(),
                  button: componentComparisonProvider.swapButton
                      ? CustomAddToComparisonButtonWidget(
                          onPressed: () {
                            setState(() {
                              componentComparisonProvider.addToComparison(
                                componentComparisonProvider.modelName,
                                cooler,
                              );
                            });
                          },
                        )
                      : CustomRemoveToComparisonButtonWidget(
                          onPressed: () {
                            setState(() {
                              componentComparisonProvider.removeFromComparison(
                                componentComparisonProvider.modelName,
                                cooler,
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
