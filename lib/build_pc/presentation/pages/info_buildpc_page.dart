import 'package:build_pc_mobile/build_pc/constants/params_for_component.dart';
import 'package:build_pc_mobile/build_pc/presentation/state/build_pc_notifier.dart';
import 'package:build_pc_mobile/build_pc/presentation/state/selected_component_for_build_notifier.dart';
import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:build_pc_mobile/common/constants/app_sizes.dart';
import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:build_pc_mobile/common/presentation/navigation/route_names.dart';
import 'package:build_pc_mobile/common/widgets/custom_container_for_build.dart';
import 'package:build_pc_mobile/common/widgets/custom_icon_button_route_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InfoBuildPcPage extends StatefulWidget {
  const InfoBuildPcPage({
    Key? key,
  }) : super(key: key);

  @override
  State<InfoBuildPcPage> createState() => _InfoBuildPcPageState();
}

class _InfoBuildPcPageState extends State<InfoBuildPcPage> {
  @override
  Widget build(BuildContext context) {
    final selectedComponentForBuildNotifier =
        Provider.of<SelectedComponentForBuildNotifier>(context);
    final userBuild = selectedComponentForBuildNotifier.buildPc;
    final buildPcNotifier = Provider.of<BuildPcNotifier>(context);

    const sizeIconButton = 25.0;
    const sizeIcon = 40.0;

    const fontFamily = 'Lexend Deca';

    const heightContainer = 70.0;
    const borderRadius = 23.0;
    const blurRadius = 7.0;
    const opacity = 0.2;
    const spreadRadius = 5.0;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        leading: CustomIconButtonRoutePage(
          icon: Icons.arrow_back,
          sizeIcon: sizeIconButton,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          TextButton.icon(
            onPressed: () async {
              await selectedComponentForBuildNotifier
                  .clearAddToBuildPcComponents();
              await selectedComponentForBuildNotifier.addToComparison(
                "nameBuild",
                userBuild?.name,
              );
              await selectedComponentForBuildNotifier.addToComparison(
                "id",
                userBuild?.id,
              );
              if (userBuild?.cpu != null) {
                await selectedComponentForBuildNotifier.addToComparison(
                  "processor",
                  userBuild?.cpu,
                );
              }
              if (userBuild?.motherboard != null) {
                await selectedComponentForBuildNotifier.addToComparison(
                  "motherboard",
                  userBuild?.motherboard,
                );
              }
              if (userBuild?.cooler != null) {
                await selectedComponentForBuildNotifier.addToComparison(
                  "cooler",
                  userBuild?.cooler,
                );
              }
              if (userBuild?.gpu != null) {
                await selectedComponentForBuildNotifier.addToComparison(
                  "graphic_card",
                  userBuild?.gpu,
                );
              }
              //ignore: use_if_null_to_convert_nulls_to_bools
              if (userBuild?.hdd != null && userBuild?.hdd?.isNotEmpty == true)
              {
                await selectedComponentForBuildNotifier.addToComparison(
                  "hdd",
                  userBuild?.hdd?.first,
                );
              }
              //ignore: use_if_null_to_convert_nulls_to_bools
              if (userBuild?.ssd != null && userBuild?.ssd?.isNotEmpty == true)
              {
                await selectedComponentForBuildNotifier.addToComparison(
                  "ssd",
                  userBuild?.ssd?.first,
                );
              }
              //ignore: use_if_null_to_convert_nulls_to_bools
              if (userBuild?.ram != null && userBuild?.ram?.isNotEmpty == true)
              {
                await selectedComponentForBuildNotifier.addToComparison(
                  "memory",
                  userBuild?.ram?.first,
                );
              }
              if (userBuild?.powerSupply != null) {
                await selectedComponentForBuildNotifier.addToComparison(
                  "power_supply",
                  userBuild?.powerSupply,
                );
              }
              if (userBuild?.pcCase != null) {
                await selectedComponentForBuildNotifier.addToComparison(
                  "case",
                  userBuild?.pcCase,
                );
              }
              if (!mounted) return;
              await Navigator.pushNamed(
                context,
                RouteNames.addComponentToBuildPage,
              );
            },
            icon: const Icon(
              Icons.edit,
              size: 24.0,
              color: AppColors.tertiaryColor,
            ),
            label: const Text(
              'Edit',
              style: TextStyle(
                color: AppColors.tertiaryColor,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          CustomContainerForBuild(
            heightContainer: heightContainer,
            borderRadius: borderRadius,
            opacity: opacity,
            spreadRadius: spreadRadius,
            blurRadius: blurRadius,
            widget: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Name build: ${userBuild?.name}',
                    style: const TextStyle(
                      fontSize: 20,
                      fontFamily: fontFamily,
                    ),
                  ),
                  Text(
                    'User name: ${userBuild?.user?.name}',
                    style: const TextStyle(
                      fontSize: 20,
                      fontFamily: fontFamily,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: ListView.builder(
                itemCount: ParamsForComponent.listComponents.length,
                itemBuilder: (BuildContext context, int value) {
                  final componentType =
                      ParamsForComponent.listComponents[value].name;
                  final componentExists = userBuild != null &&
                      buildPcNotifier.getComponent(
                            userBuild,
                            componentType,
                          ) !=
                          null;

                  //ignore: cast_nullable_to_non_nullable
                  final component = buildPcNotifier.getComponent(
                    //ignore: avoid-non-null-assertion
                    userBuild!, componentType,
                  ) as BaseComponent?;

                  return Column(
                    children: [
                      if (componentExists)
                        CustomContainerForBuild(
                          heightContainer: heightContainer,
                          borderRadius: borderRadius,
                          opacity: opacity,
                          spreadRadius: spreadRadius,
                          blurRadius: blurRadius,
                          widget: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(width: AppSizes.defaultPadding),
                                Image.asset(
                                  ParamsForComponent
                                      .listComponents[value].imagePath,
                                  color: AppColors.alternateColor,
                                  width: sizeIcon,
                                ),
                                const SizedBox(width: AppSizes.defaultPadding),
                                Text(
                                  '${component?.name}',
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontFamily: fontFamily,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
