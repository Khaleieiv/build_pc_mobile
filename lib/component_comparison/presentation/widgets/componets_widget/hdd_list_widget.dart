import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/hdd/hdd.dart';
import 'package:build_pc_mobile/common/presentation/state/hdd_notifier.dart';
import 'package:build_pc_mobile/common/widgets/custom_no_data_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/state/component_comparison_notifier.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_add_to_comparison_button_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_component_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_remove_to_comparison_button_widget.dart';
import 'package:ez_localization/ez_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

class HddListWidget extends StatefulWidget {
  final TextEditingController searchController;

  const HddListWidget({Key? key, required this.searchController})
      : super(key: key);

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
    final filteredHdd = hddProvider.listHdd
        ?.where(
          (hdd) => hdd.name
              .toLowerCase()
              .contains(widget.searchController.text.toLowerCase()),
        )
        .toList();

    return hddProvider.isLoading
        ? ListView.builder(
            shrinkWrap: false,
            itemCount: filteredHdd?.length,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              final hdd = filteredHdd?[index];

              return HddItemWidget(hdd: hdd);
            },
          )
        : CustomNoDataWidget(
            text: context.getString('message_data_base'),
          );
  }
}

class HddItemWidget extends StatefulWidget {
  final Hdd? hdd;

  const HddItemWidget({Key? key, this.hdd}) : super(key: key);

  @override
  _HddItemWidgetState createState() => _HddItemWidgetState();
}

class _HddItemWidgetState extends State<HddItemWidget> {
  bool isAddedToComparison = false;

  @override
  Widget build(BuildContext context) {
    final componentComparisonProvider =
        Provider.of<ComponentComparisonNotifier>(context);

    return CustomComponentWidget(
      imagePath: 'assets/icons/hdd.png',
      name: widget.hdd?.name ?? '',
      labelTextNameFirst:
          context.getString('component_comparison.gpu.label_first'),
      labelTextComponentFirst: widget.hdd?.readingSpeed.toString() ?? '',
      labelTextNameSecond:
          context.getString('component_comparison.gpu.label_second'),
      labelTextComponentSecond: widget.hdd?.storageSize.toString() ?? '',
      labelTextNameThird:
          context.getString('component_comparison.gpu.label_third'),
      labelTextComponentThird: widget.hdd?.writingSpeed.toString() ?? '',
      labelTextNameFourth:
          context.getString('component_comparison.gpu.label_fourth'),
      labelTextComponentFourth: widget.hdd?.bufferSize.toString() ?? '',
      labelTextNameFifth:
          context.getString('component_comparison.gpu.label_fifth'),
      labelTextComponentFifth: widget.hdd?.recommendedPrice.toString() ?? '',
      button: isAddedToComparison
          ? CustomRemoveToComparisonButtonWidget(
              onPressed: () {
                setState(() {
                  isAddedToComparison = false;
                  componentComparisonProvider.removeFromComparison(
                    componentComparisonProvider.modelName,
                    //ignore: cast_nullable_to_non_nullable
                    widget.hdd as BaseComponent,
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
                    widget.hdd as BaseComponent,
                  );
                });
              },
            ),
    );
  }
}
