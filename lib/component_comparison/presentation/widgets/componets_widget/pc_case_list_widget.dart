import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:build_pc_mobile/common/domain/entities/pc_case/pc_case.dart';
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
  final TextEditingController searchController;

  const PcCaseListWidget({Key? key, required this.searchController})
      : super(key: key);

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
    final filteredPcCase = pcCaseProvider.listPcCase
        ?.where(
          (pcCase) => pcCase.name
              .toLowerCase()
              .contains(widget.searchController.text.toLowerCase()),
        )
        .toList();

    return pcCaseProvider.isLoading
        ? ListView.builder(
            itemCount: filteredPcCase?.length,
            itemBuilder: (BuildContext context, int index) {
              final pcCase = filteredPcCase?[index];

              return PcCaseItemWidget(pcCase: pcCase);
            },
          )
        : const CustomNoDataWidget(
            text: 'There is no data on these components in the database.',
          );
  }
}

class PcCaseItemWidget extends StatefulWidget {
  final PcCase? pcCase;

  const PcCaseItemWidget({Key? key, this.pcCase}) : super(key: key);

  @override
  _PcCaseItemWidgetState createState() => _PcCaseItemWidgetState();
}

class _PcCaseItemWidgetState extends State<PcCaseItemWidget> {
  bool isAddedToComparison = false;

  @override
  Widget build(BuildContext context) {
    final componentComparisonProvider =
        Provider.of<ComponentComparisonNotifier>(context);

    return CustomComponentWidget(
      imagePath: 'assets/icons/power_supply.png',
      name: widget.pcCase?.name ?? '',
      labelTextNameFirst: 'Fans included',
      labelTextComponentFirst: widget.pcCase?.fansIncluded.toString() ?? '',
      labelTextNameSecond: 'Performance level',
      labelTextComponentSecond: widget.pcCase?.performanceLevel?.name ?? '',
      labelTextNameThird: 'Recommended price',
      labelTextComponentThird: widget.pcCase?.recommendedPrice.toString() ?? '',
      labelTextNameFourth: 'Power supply form factor',
      labelTextComponentFourth:
          widget.pcCase?.casePowerSupplyLocation.name ?? '',
      labelTextNameFifth: 'Max length of GPU',
      labelTextComponentFifth:
          widget.pcCase?.maxLengthOfGraphicCard.toString() ?? '',
      button: isAddedToComparison
          ? CustomRemoveToComparisonButtonWidget(
              onPressed: () {
                setState(() {
                  isAddedToComparison = false;
                  componentComparisonProvider.removeFromComparison(
                    componentComparisonProvider.modelName,
                    //ignore: cast_nullable_to_non_nullable
                    widget.pcCase as BaseComponent,
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
                    widget.pcCase as BaseComponent,
                  );
                });
              },
            ),
    );
  }
}
