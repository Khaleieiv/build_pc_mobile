import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final String labelText;
  final String hintText;
  final TextInputType keyboardType;
  final bool checkSuffixIcon;

  const CustomTextFormField({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.keyboardType,
    required this.checkSuffixIcon,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _passwordVisible = false;

  @override
  void initState() {
    _passwordVisible = true;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const height = 50.0;
    const borderRadius = 25.0;

    String? customValidator(String? fieldContent) =>
        fieldContent != null && fieldContent.isEmpty
            ? 'Please enter some text'
            : fieldContent;

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
      child: Container(
        width: double.infinity,
        height: height,
        decoration: BoxDecoration(
          color: AppDarkColors.primaryBackgroundDarkColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(12, 0, 20, 0),
          child: TextFormField(
            style: const TextStyle(
              color: AppColors.tertiaryColor,
            ),
            obscureText: !_passwordVisible,
            keyboardType: widget.keyboardType,
            textInputAction: TextInputAction.next,
            cursorColor: AppColors.tertiaryColor,
            validator: customValidator,
            decoration: InputDecoration(
              suffixIcon: widget.checkSuffixIcon
                  ? IconButton(
                      icon: Icon(
                        _passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: AppColors.tertiaryColor,
                      ),
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible;
                        });
                      },
                    )
                  : null,
              labelText: widget.labelText,
              labelStyle: const TextStyle(
                color: AppColors.secondaryTextColor,
              ),
              hintText: widget.hintText,
              hintStyle: const TextStyle(color: AppColors.tertiaryColor),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0x00000000),
                  width: 1,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0),
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0x00000000),
                  width: 1,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0),
                ),
              ),
              errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.errorColor,
                  width: 1,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0),
                ),
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.errorColor,
                  width: 1,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
