import 'package:build_pc_mobile/auth/presentation/state/auth_notifier.dart';
import 'package:build_pc_mobile/auth/presentation/widgets/already_have_an_account_check.dart';
import 'package:build_pc_mobile/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:build_pc_mobile/auth/presentation/widgets/or_divider.dart';
import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:build_pc_mobile/common/constants/app_sizes.dart';
import 'package:build_pc_mobile/common/presentation/navigation/route_names.dart';
import 'package:build_pc_mobile/common/widgets/custom_button_widget.dart';
import 'package:ez_localization/ez_localization.dart';
import 'package:flutter/material.dart';
import 'package:panara_dialogs/panara_dialogs.dart';
import 'package:provider/provider.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  bool get _enableSignInButton =>
      _usernameController.text.isNotEmpty &&
      _passwordController.text.isNotEmpty;

  @override
  void initState() {
    _usernameController.addListener(_inputFieldValueChangeListener);
    _passwordController.addListener(_inputFieldValueChangeListener);
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      final authNotifier = Provider.of<AuthNotifier>(context, listen: false);
      if (await authNotifier.trySignInWithStoredCredentials()) {
        if (!mounted) return;
        await Navigator.pushNamed(context, RouteNames.homePage);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    const fromSTEBStart = 45.0;
    const fromSTEBEnd = 45.0;
    const fromSTEBBottom = 20.0;
    const heightContainer = 60.0;
    const borderRadius = 25.0;
    const fontSizeButton = 22.0;

    return Form(
      child: Column(
        children: [
          const SizedBox(height: AppSizes.defaultPadding),
          CustomTextFormField(
            controller: _usernameController,
            labelText: context.getString('auth.login_page.username'),
            hintText: context.getString('auth.login_page.username'),
            keyboardType: TextInputType.emailAddress,
            checkSuffixIcon: false,
          ),
          CustomTextFormField(
            controller: _passwordController,
            labelText: context.getString('auth.login_page.password'),
            hintText: context.getString('auth.login_page.password'),
            keyboardType: TextInputType.visiblePassword,
            checkSuffixIcon: true,
          ),
          const SizedBox(height: AppSizes.defaultPadding),
          CustomButtonWidget(
            fromSTEBStart: 0,
            fromSTEBTop: 0,
            fromSTEBEnd: 0,
            fromSTEBBottom: fromSTEBBottom,
            heightContainer: heightContainer,
            borderRadius: borderRadius,
            onPressed: _enableSignInButton ? loginButtonPressed : null,
            nameButton: context.getString('auth.login_page.log_in'),
            colorButton: AppColors.primaryColor,
            fontSizeButton: fontSizeButton,
            colorTextButton: AppColors.tertiaryColor,
          ),
          const SizedBox(height: AppSizes.defaultPadding),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.pushNamed(context, RouteNames.registerPage);
            },
          ),
          const OrDivider(),
          CustomButtonWidget(
            fromSTEBStart: fromSTEBStart,
            fromSTEBTop: 0,
            fromSTEBEnd: fromSTEBEnd,
            fromSTEBBottom: fromSTEBBottom,
            heightContainer: heightContainer,
            borderRadius: borderRadius,
            onPressed: () => Navigator.pushNamed(context, RouteNames.homePage),
            nameButton: context.getString('auth.login_page.guest'),
            colorButton: AppDarkColors.primaryBackgroundDarkColor,
            fontSizeButton: fontSizeButton,
            colorTextButton: AppColors.tertiaryColor,
          ),
        ],
      ),
    );
  }

  void _inputFieldValueChangeListener() {
    setState(() {
      //TODO
    });
  }

  Future<void> loginButtonPressed() async {
    final authNotifier = Provider.of<AuthNotifier>(context, listen: false);
    try {
      const lengthFirst = 8;
      const lengthSecond = 20;

      if (_passwordController.text.length < lengthFirst) {
        message("Password should be atleast 8 characters");
      } else if (_passwordController.text.length > lengthSecond) {
        message("Password should not be greater than 20 characters");
      } else {
        try {
          await authNotifier.signInWithEmail(
            _usernameController.text,
            _passwordController.text,
          );
          if (!mounted) return;
          await Navigator.pushNamed(context, RouteNames.homePage);
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
          );
        }
      }
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
      );
    }
  }

  void message(String? text) {
    if (text != null) {
      PanaraInfoDialog.show(
        context,
        title: "Oops",
        message: text,
        buttonText: "Okay",
        onTapDismiss: () {
          Navigator.pop(context);
        },
        textColor: AppColors.blackColor,
        panaraDialogType: PanaraDialogType.warning,
      );
    }
  }
}
