import 'package:build_pc_mobile/common/presentation/state/gpu_notifier.dart';
import 'package:build_pc_mobile/common/widgets/custom_no_data_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/state/component_comparison_notifier.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_add_to_comparison_button_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_component_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_remove_to_comparison_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

class GPUListWidget extends StatefulWidget {
  const GPUListWidget({Key? key}) : super(key: key);

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
    final componentComparisonProvider =
        Provider.of<ComponentComparisonNotifier>(context);

    return gpuProvider.isLoading
        ? ListView.builder(
            itemCount: gpuProvider.listGPU?.length,
            itemBuilder: (BuildContext context, int index) {
              final gpu = gpuProvider.listGPU?[index];
              Widget? result;
              if (gpu != null) {
                result = CustomComponentWidget(
                  imagePath: 'assets/icons/gpu.png',
                  name: gpu.name,
                  labelTextNameFirst: 'GPU frequency',
                  labelTextComponentFirst: gpu.gpuFrequency.toString(),
                  labelTextNameSecond: 'Memory frequency',
                  labelTextComponentSecond: gpu.memoryFrequency.toString(),
                  labelTextNameThird: 'TDP',
                  labelTextComponentThird: gpu.tdp.toString(),
                  labelTextNameFourth: 'Technical process',
                  labelTextComponentFourth: gpu.technicalProcess.toString(),
                  labelTextNameFifth: 'Year Of Release',
                  labelTextComponentFifth: gpu.year.toString(),
                  button: componentComparisonProvider.swapButton
                      ? CustomAddToComparisonButtonWidget(
                          onPressed: () {
                            setState(() {
                              componentComparisonProvider.addToComparison(
                                componentComparisonProvider.modelName,
                                gpu,
                              );
                            });
                          },
                        )
                      : CustomRemoveToComparisonButtonWidget(
                          onPressed: () {
                            setState(() {
                              componentComparisonProvider.removeFromComparison(
                                componentComparisonProvider.modelName,
                                gpu,
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
