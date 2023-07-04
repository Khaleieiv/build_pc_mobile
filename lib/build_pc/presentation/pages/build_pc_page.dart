import 'package:build_pc_mobile/build_pc/constants/params_for_component.dart';
import 'package:build_pc_mobile/build_pc/presentation/state/build_pc_notifier.dart';
import 'package:build_pc_mobile/build_pc/presentation/state/selected_component_for_build_notifier.dart';
import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:build_pc_mobile/common/constants/app_sizes.dart';
import 'package:build_pc_mobile/common/presentation/navigation/route_names.dart';
import 'package:build_pc_mobile/common/widgets/custom_no_data_widget.dart';
import 'package:build_pc_mobile/common/widgets/custom_refresh_indicator_widget.dart';
import 'package:build_pc_mobile/home/presentation/state/dark_light_theme_notifier.dart';
import 'package:build_pc_mobile/rating/presentation/state/rating_notifier.dart';
import 'package:ez_localization/ez_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:panara_dialogs/panara_dialogs.dart';
import 'package:provider/provider.dart';

class BuildPcPage extends StatefulWidget {
  const BuildPcPage({
    Key? key,
  }) : super(key: key);

  @override
  State<BuildPcPage> createState() => _BuildPcPageState();
}

class _BuildPcPageState extends State<BuildPcPage> {
  BuildPcNotifier get _buildPcNotifier =>
      Provider.of<BuildPcNotifier>(context, listen: false);

  RatingNotifier get _ratingPcNotifier =>
      Provider.of<RatingNotifier>(context, listen: false);

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _buildPcNotifier.fetchBuildPcUserListComponents();
      _ratingPcNotifier.fetchBuildPcListComponents();
    });
  }

  @override
  Widget build(BuildContext context) {
    final buildPcNotifier = Provider.of<BuildPcNotifier>(context);
    final themeChange = Provider.of<DarkLightThemeNotifier>(context);
    final selectedComponentForBuildNotifier =
        Provider.of<SelectedComponentForBuildNotifier>(context);

    const sizeIcon = 40.0;
    const fontFamily = 'Lexend Deca';

    const heightContainer = 130.0;
    const borderRadius = 23.0;

    const opacity = 0.2;
    const spreadRadius = 5.0;
    const blurRadius = 7.0;

    return Scaffold(
      body: buildPcNotifier.buildPcList != null &&
              buildPcNotifier.buildPcList!.isNotEmpty
          ? CustomRefreshIndicatorWidget(
              onPressed: () async {
                await Future.delayed(const Duration(milliseconds: 1500));
                await buildPcNotifier.fetchBuildPcUserListComponents();
              },
              widget: ListView.builder(
                itemCount: buildPcNotifier.buildPcList?.length ?? 0,
                itemBuilder: (BuildContext context, int index) {
                  final userBuildPc = buildPcNotifier.buildPcList?[index];

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        selectedComponentForBuildNotifier.buildPc = userBuildPc;
                        Navigator.pushNamed(
                          context,
                          RouteNames.infoBuildPcPage,
                        );
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 1.0,
                        height: heightContainer,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(borderRadius),
                          shape: BoxShape.rectangle,
                          color: themeChange.darkTheme
                              ? AppDarkColors.customBackgroundDarkColor
                              : AppLightColors.accent4LightColor,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(opacity),
                              spreadRadius: spreadRadius,
                              blurRadius: blurRadius,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${context.getString('build_pc.info.name_build')}'
                                        ': ${buildPcNotifier.buildPcList?[index].name ?? 'Draft'}',
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontFamily: fontFamily,
                                        ),
                                      ),
                                      Text(
                                        '${context.getString(''
                                            'build_pc.info.name_user')}'
                                        ': ${buildPcNotifier.buildPcList?[index].user?.name ?? ''}',
                                        style: const TextStyle(
                                          fontSize: 20,
                                          fontFamily: fontFamily,
                                        ),
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        PanaraConfirmDialog.show(
                                          context,
                                          title: context.getString(
                                            'build_pc.build.title',
                                          ),
                                          message: context.getString(
                                            'build_pc.build.message',
                                          ),
                                          confirmButtonText: context.getString(
                                            'build_pc.build.confirm_text',
                                          ),
                                          cancelButtonText: context.getString(
                                            'build_pc.build.cancel_text',
                                          ),
                                          textColor: AppColors.blackColor,
                                          onTapCancel: () {
                                            Navigator.pop(context);
                                          },
                                          onTapConfirm: () {
                                            buildPcNotifier
                                                .deleteBuildPcUserListComponents(
                                              buildPcNotifier
                                                  .buildPcList?[index].id,
                                            );
                                            Navigator.pop(context);
                                          },
                                          panaraDialogType:
                                              PanaraDialogType.warning,
                                        );
                                      });
                                    },
                                    icon: const Icon(Icons.delete),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: AppSizes.defaultPadding / 3),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount:
                                      ParamsForComponent.listComponents.length,
                                  itemBuilder:
                                      (BuildContext context, int value) {
                                    final componentType = ParamsForComponent
                                        .listComponents[value].name;
                                    final buildPc =
                                        buildPcNotifier.buildPcList?[index];
                                    final componentExists = buildPc != null &&
                                        buildPcNotifier.getComponent(
                                              buildPc,
                                              componentType,
                                            ) !=
                                            null;

                                    return Row(
                                      children: [
                                        const SizedBox(
                                          width: AppSizes.defaultPadding / 3,
                                        ),
                                        if (componentExists)
                                          Image.asset(
                                            ParamsForComponent
                                                .listComponents[value]
                                                .imagePath,
                                            color: themeChange.darkTheme
                                                ? AppColors.tertiaryColor
                                                : AppColors.blackColor,
                                            width: sizeIcon,
                                          ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(height: AppSizes.defaultPadding / 2),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          : CustomNoDataWidget(
              text: context.getString(
                'build_pc.build.no_data',
              ),
            ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: AppColors.alternateColor,
        label: Text(
          context.getString(
            'build_pc.build.create',
          ),
        ),
        icon: const Icon(
          Icons.add,
        ),
        onPressed: () async {
          selectedComponentForBuildNotifier.checkButtonBuild = true;
          await selectedComponentForBuildNotifier.clearSwapButton(clear: true);
          await selectedComponentForBuildNotifier.clearAddToBuildPcComponents();
          await buildPcNotifier.createBuildPcUserComponents();
          await selectedComponentForBuildNotifier.addToComparison(
            "id",
            buildPcNotifier.buildPc?.id,
          );
          await selectedComponentForBuildNotifier.addToComparison(
            "priceBuild",
            0,
          );
          if (!mounted) return;
          await Navigator.pushNamed(
            context,
            RouteNames.addComponentToBuildPage,
          );
        },
      ),
    );
  }
}
