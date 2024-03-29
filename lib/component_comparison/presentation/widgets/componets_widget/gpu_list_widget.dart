import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:build_pc_mobile/common/domain/entities/gpu/gpu.dart';
import 'package:build_pc_mobile/common/presentation/state/gpu_notifier.dart';
import 'package:build_pc_mobile/common/widgets/custom_no_data_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/state/component_comparison_notifier.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_add_to_comparison_button_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_component_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_remove_to_comparison_button_widget.dart';
import 'package:ez_localization/ez_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

class GPUListWidget extends StatefulWidget {
  final TextEditingController searchController;

  const GPUListWidget({Key? key, required this.searchController})
      : super(key: key);

  @override
  State<GPUListWidget> createState() => _GPUListWidgetState();
}

class _GPUListWidgetState extends State<GPUListWidget> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Provider.of<GPUNotifier>(context, listen: false).fetchGPU();
    });
  }

  @override
  Widget build(BuildContext context) {
    final gpuProvider = Provider.of<GPUNotifier>(context);
    final filteredGPUs = gpuProvider.listGPU
        ?.where(
          (gpu) => gpu.name
              .toLowerCase()
              .contains(widget.searchController.text.toLowerCase()),
        )
        .toList();

    return gpuProvider.isLoading
        ? ListView.builder(
            itemCount: filteredGPUs?.length,
            shrinkWrap: false,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              final gpu = filteredGPUs?[index];

              return GPUItemWidget(gpu: gpu);
            },
          )
        : CustomNoDataWidget(
            text: context.getString('message_data_base'),
          );
  }
}

class GPUItemWidget extends StatefulWidget {
  final GPU? gpu;

  const GPUItemWidget({Key? key, this.gpu}) : super(key: key);

  @override
  _GPUItemWidgetState createState() => _GPUItemWidgetState();
}

class _GPUItemWidgetState extends State<GPUItemWidget> {
  bool isAddedToComparison = false;

  @override
  Widget build(BuildContext context) {
    final componentComparisonProvider =
        Provider.of<ComponentComparisonNotifier>(context);

    return CustomComponentWidget(
      imagePath: 'assets/icons/gpu.png',
      name: widget.gpu?.name ?? '',
      labelTextNameFirst:
          context.getString('component_comparison.gpu.label_first'),
      labelTextComponentFirst: widget.gpu?.gpuFrequency.toString() ?? '',
      labelTextNameSecond:
          context.getString('component_comparison.gpu.label_second'),
      labelTextComponentSecond: widget.gpu?.memoryFrequency.toString() ?? '',
      labelTextNameThird:
          context.getString('component_comparison.gpu.label_third'),
      labelTextComponentThird: widget.gpu?.tdp.toString() ?? '',
      labelTextNameFourth:
          context.getString('component_comparison.gpu.label_fourth'),
      labelTextComponentFourth: widget.gpu?.technicalProcess.toString() ?? '',
      labelTextNameFifth:
          context.getString('component_comparison.gpu.label_fifth'),
      labelTextComponentFifth: widget.gpu?.year.toString() ?? '',
      button: isAddedToComparison
          ? CustomRemoveToComparisonButtonWidget(
              onPressed: () {
                setState(() {
                  isAddedToComparison = false;
                  componentComparisonProvider.removeFromComparison(
                    componentComparisonProvider.modelName,
                    //ignore: cast_nullable_to_non_nullable
                    widget.gpu as BaseComponent,
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
                    widget.gpu as BaseComponent,
                  );
                });
              },
            ),
    );
  }
}
