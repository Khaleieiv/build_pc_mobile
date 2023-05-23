import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final double fromSTEBStart;
  final double fromSTEBTop;
  final double fromSTEBEnd;
  final double fromSTEBBottom;
  final double heightContainer;
  final double borderRadius;
  final String routeName;
  final String nameButton;
  final Color colorTextButton;
  final Color colorButton;
  final double fontSizeButton;

  const CustomButtonWidget({
    Key? key,
    required this.fromSTEBStart,
    required this.fromSTEBTop,
    required this.fromSTEBEnd,
    required this.fromSTEBBottom,
    required this.heightContainer,
    required this.borderRadius,
    required this.routeName,
    required this.nameButton,
    required this.colorButton,
    required this.fontSizeButton,
    required this.colorTextButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(
        fromSTEBStart,
        fromSTEBTop,
        fromSTEBEnd,
        fromSTEBBottom,
      ),
      child: Container(
        width: double.infinity,
        height: heightContainer,
        decoration: BoxDecoration(
          color: AppDarkColors.primaryBackgroundDarkColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, routeName);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: colorButton,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
          child: Text(
            nameButton,
            style: TextStyle(
              color: colorTextButton,
              fontSize: fontSizeButton,
            ),
          ),
        ),
      ),
    );
  }
}
