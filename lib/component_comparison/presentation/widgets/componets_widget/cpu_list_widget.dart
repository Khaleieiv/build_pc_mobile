import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:build_pc_mobile/common/domain/entities/cpu/cpu.dart';
import 'package:build_pc_mobile/common/presentation/state/cpu_notifier.dart';
import 'package:build_pc_mobile/common/widgets/custom_no_data_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/state/component_comparison_notifier.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_add_to_comparison_button_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_component_widget.dart';
import 'package:build_pc_mobile/component_comparison/presentation/widgets/custom_remove_to_comparison_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

class CPUListWidget extends StatefulWidget {
  const CPUListWidget({Key? key}) : super(key: key);

  @override
  State<CPUListWidget> createState() => _CPUListWidgetState();
}

class _CPUListWidgetState extends State<CPUListWidget> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      Provider.of<CPUNotifier>(context, listen: false).fetchCPU();
    });
  }

  @override
  Widget build(BuildContext context) {
    final cpuProvider = Provider.of<CPUNotifier>(context);

    return cpuProvider.isLoading
        ? ListView.builder(
            itemCount: cpuProvider.listCPU?.length,
            itemBuilder: (BuildContext context, int index) {
              final cpu = cpuProvider.listCPU?[index];

              return CPUItemWidget(cpu: cpu);
            },
          )
        : const CustomNoDataWidget(
            text: 'There is no data on these components in the database.',
          );
  }
}

class CPUItemWidget extends StatefulWidget {
  final CPU? cpu;

  const CPUItemWidget({Key? key, this.cpu}) : super(key: key);

  @override
  _CPUItemWidgetState createState() => _CPUItemWidgetState();
}

class _CPUItemWidgetState extends State<CPUItemWidget> {
  bool isAddedToComparison = false;

  @override
  Widget build(BuildContext context) {
    final componentComparisonProvider =
        Provider.of<ComponentComparisonNotifier>(context);

    return CustomComponentWidget(
      imagePath: 'assets/icons/cpu.png',
      name: widget.cpu?.name ?? '',
      labelTextNameFirst: 'Count of Cores',
      labelTextComponentFirst: widget.cpu?.countOfCores.toString() ?? '',
      labelTextNameSecond: 'Count of Threads',
      labelTextComponentSecond: widget.cpu?.countOfThreads.toString() ?? '',
      labelTextNameThird: 'TDP',
      labelTextComponentThird: widget.cpu?.tdp.toString() ?? '',
      labelTextNameFourth: 'Cache',
      labelTextComponentFourth: widget.cpu?.l3Cache.toString() ?? '',
      labelTextNameFifth: 'Year Of Release',
      labelTextComponentFifth: widget.cpu?.yearOfRelease.toString() ?? '',
      button: isAddedToComparison
          ? CustomRemoveToComparisonButtonWidget(
              onPressed: () {
                setState(() {
                  isAddedToComparison = false;
                  componentComparisonProvider.removeFromComparison(
                    componentComparisonProvider.modelName,
                    //ignore: cast_nullable_to_non_nullable
                    widget.cpu as BaseComponent,
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
                    widget.cpu as BaseComponent,
                  );
                });
              },
            ),
    );
  }
}
