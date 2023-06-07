import 'package:build_pc_mobile/build_pc/data/models/component_params.dart';
import 'package:build_pc_mobile/build_pc/presentation/state/build_pc_notifier.dart';
import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:build_pc_mobile/common/constants/app_sizes.dart';
import 'package:build_pc_mobile/common/presentation/navigation/route_names.dart';
import 'package:build_pc_mobile/common/widgets/custom_no_data_widget.dart';
import 'package:build_pc_mobile/home/presentation/state/dark_light_theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
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

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _buildPcNotifier.fetchBuildPcUserListComponents();
    });
  }

  @override
  Widget build(BuildContext context) {
    final buildPcNotifier = Provider.of<BuildPcNotifier>(context);
    final themeChange = Provider.of<DarkLightThemeNotifier>(context);

    const sizeIcon = 40.0;
    const fontFamily = 'Lexend Deca';

    const heightContainer = 130.0;
    const borderRadius = 23.0;

    const opacity = 0.2;
    const spreadRadius = 5.0;
    const blurRadius = 7.0;

    final List<ComponentParams> listComponents = [
      ComponentParams(
        name: 'processor',
        imagePath: "assets/icons/cpu.png",
      ),
      ComponentParams(
        name: "motherboard",
        imagePath: "assets/icons/motherboard.png",
      ),
      ComponentParams(
        name: 'cooler',
        imagePath: "assets/icons/fan.png",
      ),
      ComponentParams(
        name: 'gpu',
        imagePath: "assets/icons/gpu.png",
      ),
      ComponentParams(
        name: 'memory',
        imagePath: "assets/icons/memory.png",
      ),
      ComponentParams(
        name: 'hdd',
        imagePath: "assets/icons/hdd.png",
      ),
      ComponentParams(
        name: 'ssd',
        imagePath: "assets/icons/ssd.png",
      ),
      ComponentParams(
        name: 'power_supply',
        imagePath: "assets/icons/power_supply.png",
      ),
      ComponentParams(
        name: 'case',
        imagePath: "assets/icons/case.png",
      ),
    ];

    return Scaffold(
      body: buildPcNotifier.isLoading
          ? ListView.builder(
              itemCount: buildPcNotifier.buildPcList?.length ?? 0,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Name build: ${buildPcNotifier.buildPcList?
                                    [index].nameOfBuild ?? 'Draft'}',
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontFamily: fontFamily,
                                    ),
                                  ),
                                  Text(
                                    'Name user: ${buildPcNotifier.buildPcList?
                                    [index].user?.name ?? ''}',
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
                                    buildPcNotifier
                                        .deleteBuildPcUserListComponents(
                                      buildPcNotifier.buildPcList?[index].id,
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
                              itemCount: listComponents.length,
                              itemBuilder: (BuildContext context, int value) {
                                final componentType =
                                    listComponents[value].name;
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
                                    if (componentExists)
                                      Image.asset(
                                        listComponents[value].imagePath,
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
                );
              },
            )
          : const CustomNoDataWidget(
              text: "You don't have any pc builds.",
            ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: AppColors.alternateColor,
        label: const Text("Create build"),
        icon: const Icon(
          Icons.add,
        ),
        onPressed: () {
          buildPcNotifier.createBuildPcUserComponents();
          Navigator.pushNamed(context, RouteNames.addComponentToBuildPage);
        },
      ),
    );
  }
}
