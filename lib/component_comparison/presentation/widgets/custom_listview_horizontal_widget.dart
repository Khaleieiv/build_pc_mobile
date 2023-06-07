import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:build_pc_mobile/common/presentation/navigation/route_names.dart';
import 'package:build_pc_mobile/component_comparison/data/models/list_components.dart';
import 'package:build_pc_mobile/component_comparison/presentation/state/component_comparison_notifier.dart';
import 'package:build_pc_mobile/home/presentation/state/dark_light_theme_notifier.dart';
import 'package:ez_localization/ez_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_annimated_staggered/simple_annimated_staggered.dart';

class CustomListViewHorizontalWidget extends StatelessWidget {
  const CustomListViewHorizontalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkLightThemeNotifier>(context);
    final changeModelName = Provider.of<ComponentComparisonNotifier>(context);

    final List<ListComponents> listComponents = [
      ListComponents(
        image: "assets/icons/cpu.png",
        name: context.getString('comparison.list_comparison.processor'),
        modelName: 'processor',
      ),
      ListComponents(
        image: "assets/icons/motherboard.png",
        name: context.getString('comparison.list_comparison.motherboard'),
        modelName: 'motherboard',
      ),
      ListComponents(
        image: "assets/icons/gpu.png",
        name: context.getString('comparison.list_comparison.graphic_card'),
        modelName: 'graphic_card',
      ),
      ListComponents(
        image: "assets/icons/memory.png",
        name: context.getString('comparison.list_comparison.memory'),
        modelName: 'memory',
      ),
      ListComponents(
        image: "assets/icons/ssd.png",
        name: context.getString('comparison.list_comparison.ssd'),
        modelName: 'ssd',
      ),
      ListComponents(
        image: "assets/icons/hdd.png",
        name: context.getString('comparison.list_comparison.hdd'),
        modelName: 'hdd',
      ),
      ListComponents(
        image: "assets/icons/fan.png",
        name: context.getString('comparison.list_comparison.cooler'),
        modelName: 'cooler',
      ),
      ListComponents(
        image: "assets/icons/power_supply.png",
        name: context.getString('comparison.list_comparison.power_supply'),
        modelName: 'power_supply',
      ),
      ListComponents(
        image: "assets/icons/case.png",
        name: context.getString('comparison.list_comparison.case'),
        modelName: 'case',
      ),
    ];

    const verticalOffset = 100.0;
    const borderRadius = 25.0;
    const iconSize = 140.0;

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 180,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemCount: listComponents.length,
          itemBuilder: (BuildContext ctx, index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 1000),
              child: SlideAnimation(
                verticalOffset: verticalOffset,
                child: FadeInAnimation(
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: themeChange.darkTheme
                          ? AppLightColors.primaryBackgroundLightColor
                          : AppDarkColors.accent2DarkColor,
                      borderRadius: BorderRadius.circular(borderRadius),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Expanded(
                            child: IconButton(
                              onPressed: () {
                                changeModelName.modelName =
                                    listComponents[index].modelName;
                                Navigator.pushNamed(
                                  context,
                                  RouteNames.componentsPage,
                                );
                              },
                              icon: Image.asset(listComponents[index].image),
                              iconSize: iconSize,
                            ),
                          ),
                          Text(
                            textAlign: TextAlign.center,
                            listComponents[index].name,
                            style: const TextStyle(
                              fontSize: 20,
                              color: AppColors.blackColor,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
