import 'package:build_pc_mobile/common/constants/app_sizes.dart';
import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;

  const Responsive({
    Key? key,
    required this.mobile,
    required this.tablet,
  }) : super(key: key);

  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < AppSizes.sizeWidthForMobile;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= AppSizes.sizeWidthForMobile &&
      MediaQuery.of(context).size.width <= AppSizes.sizeWidthForTablet;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return size.width >= AppSizes.sizeWidthForMobile &&
            size.width <= AppSizes.sizeWidthForTablet
        ? tablet
        : mobile;
  }
}
