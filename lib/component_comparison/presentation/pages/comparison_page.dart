import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:build_pc_mobile/common/constants/app_sizes.dart';
import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:build_pc_mobile/common/presentation/navigation/route_names.dart';
import 'package:build_pc_mobile/common/widgets/custom_icon_button_route_page.dart';
import 'package:build_pc_mobile/common/widgets/custom_logo_widget.dart';
import 'package:build_pc_mobile/component_comparison/constans/list_components_parameters.dart';
import 'package:build_pc_mobile/component_comparison/presentation/state/component_comparison_notifier.dart';
import 'package:build_pc_mobile/home/presentation/state/dark_light_theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ComparisonPage extends StatelessWidget {
  const ComparisonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkLightThemeNotifier>(context);
    final changedModelName = Provider.of<ComponentComparisonNotifier>(context);

    const widthSizeBox = 150.0;
    const sizeIcon= 25.0;

    List<String> selectedList() {
      switch (changedModelName.modelName) {
        case 'processor':
          return ListComponentsParameters.cpuList;
        case 'motherboard':
          return ListComponentsParameters.motherboardList;
        case 'graphic_card':
          return ListComponentsParameters.gpuList;
        case 'memory':
          return ListComponentsParameters.memoryList;
        case 'ssd':
          return ListComponentsParameters.ssdList;
        case 'hdd':
          return ListComponentsParameters.hddList;
        case 'cooler':
          return ListComponentsParameters.coolerList;
        case 'power_supply':
          return ListComponentsParameters.powerSupplyList;
        case 'case':
          return ListComponentsParameters.caseList;
        default:
          return [];
      }
    }

    const switchValue = 2;

    final lightColor = themeChange.darkTheme
        ? AppColors.secondaryTextColor
        : AppColors.tertiaryColor;

    final darkColor = themeChange.darkTheme
        ? AppColors.secondaryColor
        : AppColors.secondaryTextColor;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        leading: CustomIconButtonRoutePage(
          icon: Icons.arrow_back,
          sizeIcon: sizeIcon,
          onPressed: () {
            Navigator.pushNamed(context, RouteNames.componentsPage);
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              changedModelName.clearListComparison(changedModelName.modelName);
            },
            icon: const Icon(
              Icons.cleaning_services_rounded,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: AppSizes.defaultPadding),
            const CustomLogoWidget(
              label: 'Selected component',
              fontSize: 30,
            ),
            const SizedBox(height: AppSizes.defaultPadding),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: widthSizeBox,
                      height: MediaQuery.of(context).size.height,
                      child: ListView.builder(
                        itemCount: selectedList().length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: ColoredBox(
                              color: AppColors.alternateColor,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  selectedList()[index],
                                  style: const TextStyle(
                                    color: AppColors.blackColor,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: changedModelName
                                .comparedComponents[changedModelName.modelName]
                                ?.length,
                            itemBuilder: (BuildContext context, int index) {
                              final List<BaseComponent> componentsList =
                                  changedModelName.comparedComponents[
                                          changedModelName.modelName] ??
                                      [];
                              final parsedList =
                                  componentsList[index].parsedModels();

                              return SizedBox(
                                width: widthSizeBox,
                                child: ListView.builder(
                                  itemCount: parsedList.length,
                                  itemBuilder:
                                      (BuildContext context, int value) {
                                    return Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: ColoredBox(
                                        color: (value % switchValue == 0)
                                            ? lightColor
                                            : darkColor,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text('${parsedList[value]}'),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
