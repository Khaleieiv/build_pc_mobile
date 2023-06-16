import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:build_pc_mobile/common/domain/entities/power_supply/power_supply.dart';
import 'package:build_pc_mobile/common/presentation/state/power_supply_notifier.dart';
import 'package:build_pc_mobile/common/widgets/custom_no_data_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/state/component_comparison_notifier.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_add_to_comparison_button_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_component_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_remove_to_comparison_button_widget.dart';
import 'package:ez_localization/ez_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

class PowerSupplyListWidget extends StatefulWidget {
  final TextEditingController searchController;

  const PowerSupplyListWidget({Key? key, required this.searchController})
      : super(key: key);

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
    final filteredPowerSupply = powerSupplyProvider.listPowerSupply
        ?.where(
          (powerSupply) => powerSupply.name
              .toLowerCase()
              .contains(widget.searchController.text.toLowerCase()),
        )
        .toList();

    return powerSupplyProvider.isLoading
        ? ListView.builder(
            itemCount: filteredPowerSupply?.length,
            shrinkWrap: false,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              final powerSupply = filteredPowerSupply?[index];

              return PowerSupplyItemWidget(powerSupply: powerSupply);
            },
          )
        : CustomNoDataWidget(
            text: context.getString('message_data_base'),
          );
  }
}

class PowerSupplyItemWidget extends StatefulWidget {
  final PowerSupply? powerSupply;

  const PowerSupplyItemWidget({Key? key, this.powerSupply}) : super(key: key);

  @override
  _PowerSupplyItemWidgetState createState() => _PowerSupplyItemWidgetState();
}

class _PowerSupplyItemWidgetState extends State<PowerSupplyItemWidget> {
  bool isAddedToComparison = false;

  @override
  Widget build(BuildContext context) {
    final componentComparisonProvider =
        Provider.of<ComponentComparisonNotifier>(context);

    return CustomComponentWidget(
      imagePath: 'assets/icons/power_supply.png',
      name: widget.powerSupply?.name ?? '',
      labelTextNameFirst:
          context.getString('component_comparison.power_supply.label_first'),
      labelTextComponentFirst: widget.powerSupply?.power.toString() ?? '',
      labelTextNameSecond:
          context.getString('component_comparison.power_supply.label_second'),
      labelTextComponentSecond:
          widget.powerSupply?.performanceLevel?.name ?? '',
      labelTextNameThird:
          context.getString('component_comparison.power_supply.label_third'),
      labelTextComponentThird:
          widget.powerSupply?.recommendedPrice.toString() ?? '',
      labelTextNameFourth:
          context.getString('component_comparison.power_supply.label_fourth'),
      labelTextComponentFourth: widget.powerSupply?.pfcModule.toString() ?? '',
      labelTextNameFifth:
          context.getString('component_comparison.power_supply.label_fifth'),
      labelTextComponentFifth: widget.powerSupply?.sata.toString() ?? '',
      button: isAddedToComparison
          ? CustomRemoveToComparisonButtonWidget(
              onPressed: () {
                setState(() {
                  isAddedToComparison = false;
                  componentComparisonProvider.removeFromComparison(
                    componentComparisonProvider.modelName,
                    //ignore: cast_nullable_to_non_nullable
                    widget.powerSupply as BaseComponent,
                  );
                });
              },
            )
          : CustomAddToComparisonButtonWidget(
              onPressed: () {
                setState(() {
                  isAddedToComparison = true;
                  componentComparisonProvider.addToComparison(
                    componentComparisonProvider.modelName,
                    //ignore: cast_nullable_to_non_nullable
                    widget.powerSupply as BaseComponent,
                  );
                });
              },
            ),
    );
  }
}
