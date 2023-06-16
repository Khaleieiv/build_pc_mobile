import 'package:build_pc_mobile/auth/presentation/state/auth_notifier.dart';
import 'package:build_pc_mobile/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:build_pc_mobile/common/constants/app_sizes.dart';
import 'package:build_pc_mobile/common/presentation/navigation/route_names.dart';
import 'package:build_pc_mobile/common/widgets/custom_button_widget.dart';
import 'package:ez_localization/ez_localization.dart';
import 'package:flutter/material.dart';
import 'package:panara_dialogs/panara_dialogs.dart';
import 'package:provider/provider.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  final _nameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();

  bool get _enableSignInButton =>
      _nameController.text.isNotEmpty &&
      _usernameController.text.isNotEmpty &&
      _emailController.text.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    final authNotifier = Provider.of<AuthNotifier>(context);
    final _name = "${authNotifier.currentUser?.name}";
    final _username = "${authNotifier.currentUser?.username}";
    final _email = "${authNotifier.currentUser?.email}";
    _nameController.value = TextEditingValue(
      text: _name,
      selection: TextSelection.fromPosition(
        TextPosition(offset: _name.length),
      ),
    );
    _usernameController.value = TextEditingValue(
      text: _username,
      selection: TextSelection.fromPosition(
        TextPosition(offset: _username.length),
      ),
    );
    _emailController.value = TextEditingValue(
      text: _email,
      selection: TextSelection.fromPosition(
        TextPosition(offset: _email.length),
      ),
    );

    Future<void> loginButtonPressed() async {
      final authNotifier = Provider.of<AuthNotifier>(context, listen: false);
      await authNotifier.updateProfile(
        _nameController.text,
        _usernameController.text,
        _emailController.text,
      );

      if (!mounted) return;
      await PanaraInfoDialog.show(
        context,
        title: context.getString("profile.edit_profile.congratulations"),
        message: context.getString("profile.edit_profile.change_successful"),
        buttonText: context.getString("profile.edit_profile.okay"),
        onTapDismiss: () {
          Navigator.pop(context);
        },
        textColor: AppColors.blackColor,
        panaraDialogType: PanaraDialogType.warning,
      );
      await authNotifier.getCurrentUser();
    }

    Future<void> deleteButtonPressed() async {
      final authNotifier = Provider.of<AuthNotifier>(context, listen: false);

      if (!mounted) return;
      PanaraConfirmDialog.show(
        context,
        title: context.getString("profile.edit_profile.wow"),
        message:
            context.getString("profile.edit_profile.confirm_delete_account"),
        confirmButtonText: context.getString("profile.edit_profile.confirm"),
        cancelButtonText: context.getString("profile.edit_profile.cancel"),
        textColor: AppColors.blackColor,
        onTapCancel: () {
          Navigator.pop(context);
        },
        onTapConfirm: () {
          authNotifier.deleteUser();
          Navigator.pushNamed(context, RouteNames.loginPage);
        },
        panaraDialogType: PanaraDialogType.warning,
      );
    }

    const heightContainer = 450.0;

    const fromSTEBStartButtonLogOut = 90.0;
    const fromSTEBEndButtonLogOut = 90.0;
    const fromSTEBBottomButtonLogOut = 20.0;
    const heightButtonLogOut = 50.0;
    const borderRadiusButtonLogOut = 25.0;
    const fontSizeButtonButtonLogOut = 18.0;

    const sizeContainer = 80.0;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.getString('profile.edit_profile.edit_profile'),
        ),
        backgroundColor: AppColors.primaryColor,
        actions: [
          IconButton(
            color: AppColors.errorColor,
            onPressed: deleteButtonPressed,
            icon: const Icon(Icons.delete_forever),
          ),
        ],
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
                    labelText: context.getString('profile.edit_profile.name'),
                    hintText: authNotifier.currentUser?.name ?? "",
                    keyboardType: TextInputType.name,
                    checkSuffixIcon: false,
                    controller: _nameController,
                  ),
                  CustomTextFormField(
                    labelText:
                        context.getString('profile.edit_profile.username'),
                    hintText: authNotifier.currentUser?.username ?? "",
                    keyboardType: TextInputType.name,
                    checkSuffixIcon: false,
                    controller: _usernameController,
                  ),
                  CustomTextFormField(
                    labelText: context.getString('profile.edit_profile.email'),
                    hintText: authNotifier.currentUser?.email ?? "",
                    keyboardType: TextInputType.emailAddress,
                    checkSuffixIcon: false,
                    controller: _emailController,
                  ),
                  const SizedBox(height: AppSizes.defaultPadding),
                  CustomButtonWidget(
                    fromSTEBStart: fromSTEBStartButtonLogOut,
                    fromSTEBTop: 0,
                    fromSTEBEnd: fromSTEBEndButtonLogOut,
                    fromSTEBBottom: fromSTEBBottomButtonLogOut,
                    heightContainer: heightButtonLogOut,
                    borderRadius: borderRadiusButtonLogOut,
                    onPressed: _enableSignInButton ? loginButtonPressed : null,
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
}
