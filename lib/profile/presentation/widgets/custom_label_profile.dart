import 'package:flutter/material.dart';

class CustomLabelProfile extends StatelessWidget {
  final String labelText;
  final String fontFamily;
  final Color textColor;
  final FontWeight fontWeight;
  final double fontSize;
  final double fromSTEBStart;
  final double fromSTEBTop;
  final double fromSTEBEnd;
  final double fromSTEBBottom;

  const CustomLabelProfile({
    Key? key,
    required this.labelText,
    required this.fontFamily,
    required this.textColor,
    required this.fontWeight,
    required this.fontSize,
    required this.fromSTEBStart,
    required this.fromSTEBTop,
    required this.fromSTEBEnd,
    required this.fromSTEBBottom,
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
      child: Text(
        labelText,
        style: TextStyle(
          fontFamily: fontFamily,
          color: textColor,
          fontWeight: fontWeight,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
