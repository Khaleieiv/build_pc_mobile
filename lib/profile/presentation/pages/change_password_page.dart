import 'package:build_pc_mobile/auth/presentation/state/auth_notifier.dart';
import 'package:build_pc_mobile/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:build_pc_mobile/common/constants/app_sizes.dart';
import 'package:build_pc_mobile/common/presentation/navigation/route_names.dart';
import 'package:build_pc_mobile/common/widgets/custom_button_widget.dart';
import 'package:build_pc_mobile/profile/presentation/state/profile_notifier.dart';
import 'package:ez_localization/ez_localization.dart';
import 'package:flutter/material.dart';
import 'package:panara_dialogs/panara_dialogs.dart';
import 'package:provider/provider.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final _passwordOldController = TextEditingController();
  final _passwordNewController = TextEditingController();

  bool get _enableSignInButton =>
      _passwordOldController.text.isNotEmpty &&
      _passwordNewController.text.isNotEmpty;

  @override
  void initState() {
    _passwordOldController.addListener(_inputFieldValueChangeListener);
    _passwordNewController.addListener(_inputFieldValueChangeListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const heightContainer = 400.0;

    const fromSTEBStartButtonLogOut = 90.0;
    const fromSTEBEndButtonLogOut = 90.0;
    const fromSTEBBottomButtonLogOut = 20.0;
    const heightButtonLogOut = 50.0;
    const borderRadiusButtonLogOut = 25.0;
    const fontSizeButtonButtonLogOut = 18.0;

    const sizeContainer = 80.0;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Change password",
        ),
        backgroundColor: AppColors.primaryColor,
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Container(
            width: MediaQuery.of(context).size.width * 1.0,
            height: heightContainer,
            decoration: const BoxDecoration(
              color: AppColors.primaryColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Align(
                    child: Container(
                      width: sizeContainer,
                      height: sizeContainer,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        "https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/dark-mode-chat-xk2sj6/assets/ails754ngloi/uiAvatar@2x.png",
                      ),
                    ),
                  ),
                  const SizedBox(height: AppSizes.defaultPadding),
                  CustomTextFormField(
                    labelText: 'Old password',
                    hintText: 'Old password',
                    keyboardType: TextInputType.visiblePassword,
                    checkSuffixIcon: true,
                    controller: _passwordOldController,
                  ),
                  CustomTextFormField(
                    labelText: 'New password',
                    hintText: 'New password',
                    keyboardType: TextInputType.visiblePassword,
                    checkSuffixIcon: true,
                    controller: _passwordNewController,
                  ),
                  const SizedBox(height: AppSizes.defaultPadding),
                  CustomButtonWidget(
                    fromSTEBStart: fromSTEBStartButtonLogOut,
                    fromSTEBTop: 0,
                    fromSTEBEnd: fromSTEBEndButtonLogOut,
                    fromSTEBBottom: fromSTEBBottomButtonLogOut,
                    heightContainer: heightButtonLogOut,
                    borderRadius: borderRadiusButtonLogOut,
                    onPressed: _enableSignInButton ? changePassword : null,
                    nameButton:
                        context.getString('profile.edit_profile.save_changes'),
                    colorButton: AppLightColors.primaryBackgroundLightColor,
                    fontSizeButton: fontSizeButtonButtonLogOut,
                    colorTextButton: AppColors.primaryColor,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _inputFieldValueChangeListener() {
    setState(() {
      //TODO
    });
  }

  Future<void> changePassword() async {
    final profileNotifier =
        Provider.of<ProfileNotifier>(context, listen: false);
    final authNotifier = Provider.of<AuthNotifier>(context, listen: false);
    final body = await profileNotifier.changePassword(
      _passwordOldController.text,
      _passwordNewController.text,
    );
    if (body?.body == "Password successfully changed") {
      if (!mounted) return;
      await PanaraInfoDialog.show(
        context,
        title: "Congratulations",
        message: "Change is successful!",
        buttonText: "Okay",
        onTapDismiss: () {
          authNotifier.signOut();
          Navigator.pushNamed(context, RouteNames.loginPage);
        },
        textColor: AppColors.blackColor,
        panaraDialogType: PanaraDialogType.success,
      );
    } else if (body?.body == "Password not match") {
      if (!mounted) return;
      await PanaraInfoDialog.show(
        context,
        title: "Oops",
        message: "Password not match",
        buttonText: "Okay",
        onTapDismiss: () {
          Navigator.pop(context);
        },
        textColor: AppColors.blackColor,
        panaraDialogType: PanaraDialogType.warning,
        barrierDismissible: false,
      );
    } else {
      if (!mounted) return;
      await PanaraInfoDialog.show(
        context,
        title: "Oops",
        message: "Something's wrong.",
        buttonText: "Okay",
        onTapDismiss: () {
          Navigator.pop(context);
        },
        textColor: AppColors.blackColor,
        panaraDialogType: PanaraDialogType.warning,
        barrierDismissible: false,
      );
    }
  }
}
