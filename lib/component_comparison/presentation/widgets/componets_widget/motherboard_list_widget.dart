import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:build_pc_mobile/common/domain/entities/motherboard/motherboard.dart';
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
  final TextEditingController searchController;

  const MotherboardListWidget({Key? key, required this.searchController})
      : super(key: key);

  @override
  State<MotherboardListWidget> createState() => _MotherboardListWidgetState();
}

class _MotherboardListWidgetState extends State<MotherboardListWidget> {
  MotherboardNotifier get _motherboardNotifier =>
      Provider.of<MotherboardNotifier>(context, listen: false);

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _motherboardNotifier.fetchMotherboard();
    });
  }

  @override
  Widget build(BuildContext context) {
    final motherboardProvider = Provider.of<MotherboardNotifier>(context);
    final filteredMotherboard = motherboardProvider.listMotherboard
        ?.where(
          (motherboard) => motherboard.name
              .toLowerCase()
              .contains(widget.searchController.text.toLowerCase()),
        )
        .toList();

    return motherboardProvider.isLoading
        ? ListView.builder(
            itemCount: filteredMotherboard?.length,
            itemBuilder: (BuildContext context, int index) {
              final motherboard = filteredMotherboard?[index];

              return MotherboardItemWidget(motherboard: motherboard);
            },
          )
        : const CustomNoDataWidget(
            text: 'There is no data on these components in the database.',
          );
  }
}

class MotherboardItemWidget extends StatefulWidget {
  final Motherboard? motherboard;

  const MotherboardItemWidget({Key? key, this.motherboard}) : super(key: key);

  @override
  _MotherboardItemWidgetState createState() => _MotherboardItemWidgetState();
}

class _MotherboardItemWidgetState extends State<MotherboardItemWidget> {
  bool isAddedToComparison = false;

  @override
  Widget build(BuildContext context) {
    final componentComparisonProvider =
        Provider.of<ComponentComparisonNotifier>(context);

    return CustomComponentWidget(
      imagePath: 'assets/icons/motherboard.png',
      name: widget.motherboard?.name ?? '',
      labelTextNameFirst: 'Max amount of RAM',
      labelTextComponentFirst:
          widget.motherboard?.maxAmountOfRam.toString() ?? '',
      labelTextNameSecond: 'Memory slots',
      labelTextComponentSecond:
          widget.motherboard?.memorySlots.toString() ?? '',
      labelTextNameThird: 'Max TDP',
      labelTextComponentThird:
          widget.motherboard?.maxTdpOfProcessors.toString() ?? '',
      labelTextNameFourth: 'Memory frequency',
      labelTextComponentFourth:
          widget.motherboard?.supportedMemoryFrequency.toString() ?? '',
      labelTextNameFifth: 'Recommended price',
      labelTextComponentFifth:
          widget.motherboard?.recommendedPrice.toString() ?? '',
      button: isAddedToComparison
          ? CustomRemoveToComparisonButtonWidget(
              onPressed: () {
                setState(() {
                  isAddedToComparison = false;
                  componentComparisonProvider.removeFromComparison(
                    componentComparisonProvider.modelName,
                    //ignore: cast_nullable_to_non_nullable
                    widget.motherboard as BaseComponent,
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
                    widget.motherboard as BaseComponent,
                  );
                });
              },
            ),
    );
  }
}
