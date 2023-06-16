import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:build_pc_mobile/common/domain/entities/ram/ram.dart';
import 'package:build_pc_mobile/common/presentation/state/ram_notifier.dart';
import 'package:build_pc_mobile/common/widgets/custom_no_data_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/state/component_comparison_notifier.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_add_to_comparison_button_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_component_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_remove_to_comparison_button_widget.dart';
import 'package:ez_localization/ez_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

class RamListWidget extends StatefulWidget {
  final TextEditingController searchController;

  const RamListWidget({Key? key, required this.searchController})
      : super(key: key);

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
    final filteredRam = ramProvider.listRam
        ?.where(
          (ram) => ram.name
              .toLowerCase()
              .contains(widget.searchController.text.toLowerCase()),
        )
        .toList();

    return ramProvider.isLoading
        ? ListView.builder(
            itemCount: filteredRam?.length,
            shrinkWrap: false,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              final ram = filteredRam?[index];

              return RamItemWidget(ram: ram);
            },
          )
        : CustomNoDataWidget(
            text: context.getString('message_data_base'),
          );
  }
}

class RamItemWidget extends StatefulWidget {
  final Ram? ram;

  const RamItemWidget({Key? key, this.ram}) : super(key: key);

  @override
  _RamItemWidgetState createState() => _RamItemWidgetState();
}

class _RamItemWidgetState extends State<RamItemWidget> {
  bool isAddedToComparison = false;

  @override
  Widget build(BuildContext context) {
    final componentComparisonProvider =
        Provider.of<ComponentComparisonNotifier>(context);

    return CustomComponentWidget(
      imagePath: 'assets/icons/memory.png',
      name: widget.ram?.name ?? '',
      labelTextNameFirst:
          context.getString('component_comparison.ram.label_first'),
      labelTextComponentFirst: widget.ram?.frequency.toString() ?? '',
      labelTextNameSecond:
          context.getString('component_comparison.ram.label_second'),
      labelTextComponentSecond: widget.ram?.memoryCapacity.toString() ?? '',
      labelTextNameThird:
          context.getString('component_comparison.ram.label_third'),
      labelTextComponentThird: widget.ram?.recommendedPrice.toString() ?? '',
      labelTextNameFourth:
          context.getString('component_comparison.ram.label_fourth'),
      labelTextComponentFourth: widget.ram?.powerSupplyVoltage.toString() ?? '',
      labelTextNameFifth:
          context.getString('component_comparison.ram.label_fifth'),
      labelTextComponentFifth: widget.ram?.ramMemoryType.name ?? '',
      button: isAddedToComparison
          ? CustomRemoveToComparisonButtonWidget(
              onPressed: () {
                setState(() {
                  isAddedToComparison = false;
                  componentComparisonProvider.removeFromComparison(
                    componentComparisonProvider.modelName,
                    //ignore: cast_nullable_to_non_nullable
                    widget.ram as BaseComponent,
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
                    widget.ram as BaseComponent,
                  );
                });
              },
            ),
    );
  }
}
