import 'package:build_pc_mobile/auth/presentation/state/auth_notifier.dart';
import 'package:build_pc_mobile/auth/presentation/widgets/already_have_an_account_check.dart';
import 'package:build_pc_mobile/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:build_pc_mobile/common/constants/app_sizes.dart';
import 'package:build_pc_mobile/common/presentation/navigation/route_names.dart';
import 'package:build_pc_mobile/common/widgets/custom_button_widget.dart';
import 'package:ez_localization/ez_localization.dart';
import 'package:flutter/material.dart';
import 'package:panara_dialogs/panara_dialogs.dart';
import 'package:provider/provider.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();

  bool get _enableSignInButton =>
      _usernameController.text.isNotEmpty &&
      _passwordController.text.isNotEmpty &&
      _nameController.text.isNotEmpty &&
      _emailController.text.isNotEmpty;

  Future<void> _registerButtonPressed() async {
    final authNotifier = Provider.of<AuthNotifier>(context, listen: false);
    try {
      await authNotifier.registerAccount(
        _nameController.text,
        _usernameController.text,
        _passwordController.text,
        _emailController.text,
      );
    } catch (error) {
      PanaraInfoDialog.show(
        context,
        title: "Oops",
        message: error.toString(),
        buttonText: "Okay",
        onTapDismiss: () {
          Navigator.pop(context);
        },
        textColor: AppColors.blackColor,
        panaraDialogType: PanaraDialogType.warning,
        barrierDismissible: false,
      );

      return;
    }

    if (!mounted) return;
    PanaraInfoDialog.show(
      context,
      title: "Oops",
      message: "error.toString()",
      buttonText: "Okay",
      onTapDismiss: () {
        Navigator.pushNamed(context, RouteNames.loginPage);
      },
      textColor: AppColors.blackColor,
      panaraDialogType: PanaraDialogType.success,
    );
  }

  @override
  void initState() {
    _nameController.addListener(_inputFieldValueChangeListener);
    _passwordController.addListener(_inputFieldValueChangeListener);
    _usernameController.addListener(_inputFieldValueChangeListener);
    _emailController.addListener(_inputFieldValueChangeListener);
    super.initState();
  }

  void _inputFieldValueChangeListener() {
    setState(() {
      //TODO
    });
  }

  @override
  Widget build(BuildContext context) {
    const fromSTEBBottom = 20.0;
    const heightContainer = 60.0;
    const borderRadius = 25.0;
    const fontSizeButton = 22.0;

    return Form(
      child: Column(
        children: [
          const SizedBox(height: AppSizes.defaultPadding),
          CustomTextFormField(
            labelText: context.getString('auth.registration_page.name'),
            hintText: context.getString('auth.registration_page.name'),
            keyboardType: TextInputType.name,
            checkSuffixIcon: false,
            controller: _nameController,
          ),
          CustomTextFormField(
            labelText: context.getString('auth.registration_page.username'),
            hintText: context.getString('auth.registration_page.username'),
            keyboardType: TextInputType.name,
            checkSuffixIcon: false,
            controller: _usernameController,
          ),
          CustomTextFormField(
            labelText: context.getString('auth.registration_page.password'),
            hintText: context.getString('auth.registration_page.password'),
            keyboardType: TextInputType.visiblePassword,
            checkSuffixIcon: true,
            controller: _passwordController,
          ),
          CustomTextFormField(
            labelText: context.getString('auth.registration_page.email'),
            hintText: context.getString('auth.registration_page.email'),
            keyboardType: TextInputType.emailAddress,
            checkSuffixIcon: false,
            controller: _emailController,
          ),
          const SizedBox(height: AppSizes.defaultPadding / 2),
          CustomButtonWidget(
            fromSTEBStart: 0,
            fromSTEBTop: 0,
            fromSTEBEnd: 0,
            fromSTEBBottom: fromSTEBBottom,
            heightContainer: heightContainer,
            borderRadius: borderRadius,
            onPressed: _enableSignInButton ? _registerButtonPressed : null,
            nameButton: context.getString('auth.registration_page.sign_in'),
            colorButton: AppColors.primaryColor,
            fontSizeButton: fontSizeButton,
            colorTextButton: AppColors.tertiaryColor,
          ),
          const SizedBox(height: AppSizes.defaultPadding),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.pushNamed(context, RouteNames.loginPage);
            },
          ),
          const SizedBox(height: AppSizes.defaultPadding),
        ],
      ),
    );
  }
}
