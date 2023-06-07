import 'package:build_pc_mobile/common/presentation/state/power_supply_notifier.dart';
import 'package:build_pc_mobile/common/widgets/custom_no_data_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/state/component_comparison_notifier.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_add_to_comparison_button_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_component_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_remove_to_comparison_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

class PowerSupplyListWidget extends StatefulWidget {
  const PowerSupplyListWidget({Key? key}) : super(key: key);

  @override
  State<PowerSupplyListWidget> createState() => _PowerSupplyListWidgetState();
}

class _PowerSupplyListWidgetState extends State<PowerSupplyListWidget> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Provider.of<PowerSupplyNotifier>(context, listen: false)
          .fetchPowerSupply();
    });
  }

  @override
  Widget build(BuildContext context) {
    final powerSupplyProvider = Provider.of<PowerSupplyNotifier>(context);
    final componentComparisonProvider =
        Provider.of<ComponentComparisonNotifier>(context);

    return powerSupplyProvider.isLoading
        ? ListView.builder(
            itemCount: powerSupplyProvider.listPowerSupply?.length,
            itemBuilder: (BuildContext context, int index) {
              final powerSupply = powerSupplyProvider.listPowerSupply?[index];
              Widget? result;
              if (powerSupply != null) {
                result = CustomComponentWidget(
                  imagePath: 'assets/icons/power_supply.png',
                  name: powerSupply.name,
                  labelTextNameFirst: 'Power',
                  labelTextComponentFirst: powerSupply.power.toString(),
                  labelTextNameSecond: 'Performance level',
                  labelTextComponentSecond:
                      '${powerSupply.performanceLevel?.name}',
                  labelTextNameThird: 'Recommended price',
                  labelTextComponentThird:
                      powerSupply.recommendedPrice.toString(),
                  labelTextNameFourth: 'Pfc module',
                  labelTextComponentFourth: powerSupply.pfcModule.toString(),
                  labelTextNameFifth: 'Sata',
                  labelTextComponentFifth: powerSupply.sata.toString(),
                  button: componentComparisonProvider.swapButton
                      ? CustomAddToComparisonButtonWidget(
                          onPressed: () {
                            setState(() {
                              componentComparisonProvider.addToComparison(
                                componentComparisonProvider.modelName,
                                powerSupply,
                              );
                            });
                          },
                        )
                      : CustomRemoveToComparisonButtonWidget(
                          onPressed: () {
                            setState(() {
                              componentComparisonProvider.removeFromComparison(
                                componentComparisonProvider.modelName,
                                powerSupply,
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
