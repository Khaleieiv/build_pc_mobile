import 'package:build_pc_mobile/common/constants/constants.dart';
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
      MediaQuery.of(context).size.width < sizeWidthForMobile;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= sizeWidthForMobile &&
      MediaQuery.of(context).size.width <= sizeWidthForTablet;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return size.width >= sizeWidthForMobile && size.width <= sizeWidthForTablet
        ? tablet
        : mobile;
  }
}
