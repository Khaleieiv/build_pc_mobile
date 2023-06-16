import 'package:build_pc_mobile/build_pc/constants/params_for_component.dart';
import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:build_pc_mobile/common/constants/app_sizes.dart';
import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:build_pc_mobile/common/widgets/custom_container_for_build.dart';
import 'package:build_pc_mobile/rating/presentation/state/rating_notifier.dart';
import 'package:ez_localization/ez_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';

class InfoBuildInRatingPage extends StatefulWidget {
  const InfoBuildInRatingPage({Key? key}) : super(key: key);

  @override
  State<InfoBuildInRatingPage> createState() => _InfoBuildInRatingPageState();
}

class _InfoBuildInRatingPageState extends State<InfoBuildInRatingPage> {
  RatingNotifier get _ratingNotifier =>
      Provider.of<RatingNotifier>(context, listen: false);

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _ratingNotifier.fetchBuildPcListComponents();
    });
  }

  @override
  Widget build(BuildContext context) {
    final ratingNotifier = Provider.of<RatingNotifier>(context);
    final ratingBuildPc = ratingNotifier.buildPc;

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
                    '${context.getString('rating.info.name_build')}: '
                        '${ratingBuildPc?.name}',
                    style: const TextStyle(
                      fontSize: 20,
                      fontFamily: fontFamily,
                    ),
                  ),
                  Text(
                    '${context.getString('rating.info.name_user')}: '
                        '${ratingBuildPc?.user?.name}',
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
                  final componentExists = ratingBuildPc != null &&
                      ratingNotifier.getComponent(
                            ratingBuildPc,
                            componentType,
                          ) !=
                          null;

                  //ignore: cast_nullable_to_non_nullable
                  final component = ratingNotifier.getComponent(
                    //ignore: avoid-non-null-assertion
                    ratingBuildPc!, componentType,
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
