import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:build_pc_mobile/component_comparison/data/models/list_components.dart';
import 'package:build_pc_mobile/home/presentation/state/dark_light_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_annimated_staggered/simple_annimated_staggered.dart';

class CustomListViewHorizontalWidget extends StatelessWidget {
  const CustomListViewHorizontalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkLightThemeProvider>(context);

    final List<ListComponents> listComponents = [
      ListComponents(image: "assets/icons/cpu.png", name: "Processor"),
      ListComponents(
          image: "assets/icons/motherboard.png", name: "Motherboard"),
      ListComponents(image: "assets/icons/gpu.png", name: "Graphic Card"),
      ListComponents(image: "assets/icons/memory.png", name: "Memory"),
      ListComponents(image: "assets/icons/ssd.png", name: "Ssd"),
      ListComponents(image: "assets/icons/hdd.png", name: "Hdd"),
      ListComponents(image: "assets/icons/fan.png", name: "Cooler"),
      ListComponents(
          image: "assets/icons/power_supply.png", name: "Power Supply"),
      ListComponents(image: "assets/icons/case.png", name: "Case"),
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
                    child: Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            //TODO
                          },
                          icon: Image.asset(listComponents[index].image),
                          iconSize: iconSize,
                        ),
                        Text(
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
            );
          },
        ),
      ),
    );
  }
}
