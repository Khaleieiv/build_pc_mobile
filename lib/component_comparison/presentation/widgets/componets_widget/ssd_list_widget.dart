import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/ssd/ssd.dart';
import 'package:build_pc_mobile/common/presentation/state/ssd_notifier.dart';
import 'package:build_pc_mobile/common/widgets/custom_no_data_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/state/component_comparison_notifier.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_add_to_comparison_button_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_component_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_remove_to_comparison_button_widget.dart';
import 'package:ez_localization/ez_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

class SsdListWidget extends StatefulWidget {
  final TextEditingController searchController;

  const SsdListWidget({Key? key, required this.searchController})
      : super(key: key);

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
    final filteredSsd = ssdProvider.listSsd
        ?.where(
          (ssd) => ssd.name
              .toLowerCase()
              .contains(widget.searchController.text.toLowerCase()),
        )
        .toList();

    return ssdProvider.isLoading
        ? ListView.builder(
            itemCount: filteredSsd?.length,
            shrinkWrap: false,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              final ssd = filteredSsd?[index];

              return SsdItemWidget(ssd: ssd);
            },
          )
        : CustomNoDataWidget(
            text: context.getString('message_data_base'),
          );
  }
}

class SsdItemWidget extends StatefulWidget {
  final Ssd? ssd;

  const SsdItemWidget({Key? key, this.ssd}) : super(key: key);

  @override
  _SsdItemWidgetState createState() => _SsdItemWidgetState();
}

class _SsdItemWidgetState extends State<SsdItemWidget> {
  bool isAddedToComparison = false;

  @override
  Widget build(BuildContext context) {
    final componentComparisonProvider =
        Provider.of<ComponentComparisonNotifier>(context);

    return CustomComponentWidget(
      imagePath: 'assets/icons/ssd.png',
      name: widget.ssd?.name ?? '',
      labelTextNameFirst:
          context.getString('component_comparison.ssd.label_first'),
      labelTextComponentFirst: widget.ssd?.readingSpeed.toString() ?? '',
      labelTextNameSecond:
          context.getString('component_comparison.ssd.label_second'),
      labelTextComponentSecond: widget.ssd?.storageSize.toString() ?? '',
      labelTextNameThird:
          context.getString('component_comparison.ssd.label_third'),
      labelTextComponentThird: widget.ssd?.writingSpeed.toString() ?? '',
      labelTextNameFourth:
          context.getString('component_comparison.ssd.label_fourth'),
      labelTextComponentFourth: widget.ssd?.bufferSize.toString() ?? '',
      labelTextNameFifth:
          context.getString('component_comparison.ssd.label_fifth'),
      labelTextComponentFifth: widget.ssd?.recommendedPrice.toString() ?? '',
      button: isAddedToComparison
          ? CustomRemoveToComparisonButtonWidget(
              onPressed: () {
                setState(() {
                  isAddedToComparison = false;
                  componentComparisonProvider.removeFromComparison(
                    componentComparisonProvider.modelName,
                    //ignore: cast_nullable_to_non_nullable
                    widget.ssd as BaseComponent,
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
                    widget.ssd as BaseComponent,
                  );
                });
              },
            ),
    );
  }
}
