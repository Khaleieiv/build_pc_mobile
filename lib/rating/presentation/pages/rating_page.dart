import 'package:build_pc_mobile/build_pc/data/models/component_params.dart';
import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:build_pc_mobile/common/constants/app_sizes.dart';
import 'package:build_pc_mobile/common/presentation/navigation/route_names.dart';
import 'package:build_pc_mobile/common/widgets/custom_refresh_indicator_widget.dart';
import 'package:build_pc_mobile/home/presentation/state/dark_light_theme_notifier.dart';
import 'package:build_pc_mobile/rating/presentation/state/rating_notifier.dart';
import 'package:build_pc_mobile/rating/presentation/widgets/custom_button_rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

class RatingPage extends StatefulWidget {
  const RatingPage({Key? key}) : super(key: key);

  @override
  State<RatingPage> createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  RatingNotifier get _ratingPcNotifier =>
      Provider.of<RatingNotifier>(context, listen: false);

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _ratingPcNotifier.fetchBuildPcListComponents();
    });
  }

  @override
  Widget build(BuildContext context) {
    final ratingNotifier = context.watch<RatingNotifier>();
    final themeChange = Provider.of<DarkLightThemeNotifier>(context);

    const fontFamily = 'Lexend Deca';
    const sizeIcon = 40.0;
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
      body: CustomRefreshIndicatorWidget(
        onPressed: () async {
          await Future.delayed(const Duration(milliseconds: 1500));
          await ratingNotifier.fetchBuildPcListComponents();
        },
        widget: ListView.builder(
          itemCount: ratingNotifier.buildPcList?.length ?? 0,
          itemBuilder: (BuildContext context, int index) {
            final ratingBuildPc = ratingNotifier.buildPcList?[index];
            final id = ratingNotifier.buildPcList?[index].id ?? 0;
            ratingNotifier.isLiked(id);
            final isLiked = ratingNotifier.getAssemblyBool(id) ?? false;

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  ratingNotifier.buildPc = ratingBuildPc;
                  Navigator.pushNamed(
                    context,
                    RouteNames.infoBuildForRating,
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Name build: ${ratingNotifier.buildPcList?
                                  [index].name ?? 'Draft'}',
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontFamily: fontFamily,
                                  ),
                                ),
                                Text(
                                  'Name user: ${ratingNotifier.buildPcList?
                                  [index].user?.name ?? ''}',
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontFamily: fontFamily,
                                  ),
                                ),
                              ],
                            ),
                            CustomButtonRatingWidget(
                              swapButton: isLiked,
                              label:
                                  '${ratingNotifier.buildPcList?[index]
                                      .countOfLikes}',
                              onPressedFirst: () {
                                final ratingNotifier =
                                    Provider.of<RatingNotifier>(
                                  context,
                                  listen: false,
                                );
                                ratingNotifier.deleteLike(id);
                              },
                              onPressedSecond: () {
                                final ratingNotifier =
                                    Provider.of<RatingNotifier>(
                                  context,
                                  listen: false,
                                );
                                ratingNotifier.putLike(id);
                              },
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
                              final componentType = listComponents[value].name;
                              final buildPc =
                                  ratingNotifier.buildPcList?[index];
                              final componentExists = buildPc != null &&
                                  ratingNotifier.getComponent(
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
              ),
            );
          },
        ),
      ),
    );
  }
}
