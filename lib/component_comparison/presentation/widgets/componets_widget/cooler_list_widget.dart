import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:build_pc_mobile/common/domain/entities/cooler/cooler.dart';
import 'package:build_pc_mobile/common/presentation/state/cooler_notifier.dart';
import 'package:build_pc_mobile/common/widgets/custom_no_data_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/state/component_comparison_notifier.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_add_to_comparison_button_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_component_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_remove_to_comparison_button_widget.dart';
import 'package:ez_localization/ez_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

class CoolerListWidget extends StatefulWidget {
  final TextEditingController searchController;

  const CoolerListWidget({Key? key, required this.searchController})
      : super(key: key);

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
    final filteredCoolers = coolerProvider.listCooler
        ?.where(
          (cooler) => cooler.name
              .toLowerCase()
              .contains(widget.searchController.text.toLowerCase()),
        )
        .toList();

    return coolerProvider.isLoading
        ? ListView.builder(
            itemCount: filteredCoolers?.length,
            shrinkWrap: false,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              final cooler = filteredCoolers?[index];

              return CoolerItemWidget(cooler: cooler);
            },
          )
        : CustomNoDataWidget(
            text: context.getString('message_data_base'),
          );
  }
}

class CoolerItemWidget extends StatefulWidget {
  final Cooler? cooler;

  const CoolerItemWidget({Key? key, this.cooler}) : super(key: key);

  @override
  _CoolerItemWidgetState createState() => _CoolerItemWidgetState();
}

class _CoolerItemWidgetState extends State<CoolerItemWidget> {
  bool isAddedToComparison = false;

  @override
  Widget build(BuildContext context) {
    final componentComparisonProvider =
        Provider.of<ComponentComparisonNotifier>(context);

    return CustomComponentWidget(
      imagePath: 'assets/icons/fan.png',
      name: widget.cooler?.name ?? '',
      labelTextNameFirst:
          context.getString('component_comparison.cooler.label_first'),
      labelTextComponentFirst: widget.cooler?.thermalTubes.toString() ?? '',
      labelTextNameSecond:
          context.getString('component_comparison.cooler.label_second'),
      labelTextComponentSecond: widget.cooler?.coolerSocket.isNotEmpty ?? false
          //ignore: avoid-non-null-assertion
          ? widget.cooler!.coolerSocket.first.name
          : '',
      labelTextNameThird:
          context.getString('component_comparison.cooler.label_third'),
      labelTextComponentThird: widget.cooler?.maxTdp.toString() ?? '',
      labelTextNameFourth:
          context.getString('component_comparison.cooler.label_fourth'),
      labelTextComponentFourth: widget.cooler?.coolerMaterial.name ?? '',
      labelTextNameFifth:
          context.getString('component_comparison.cooler.label_fifth'),
      labelTextComponentFifth: widget.cooler?.recommendedPrice.toString() ?? '',
      button: isAddedToComparison
          ? CustomRemoveToComparisonButtonWidget(
              onPressed: () {
                setState(() {
                  isAddedToComparison = false;
                  componentComparisonProvider.removeFromComparison(
                    componentComparisonProvider.modelName,
                    //ignore: cast_nullable_to_non_nullable
                    widget.cooler as BaseComponent,
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
                    widget.cooler as BaseComponent,
                  );
                });
              },
            ),
    );
  }
}
