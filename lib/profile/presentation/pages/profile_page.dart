import 'package:build_pc_mobile/auth/presentation/state/auth_notifier.dart';
import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:build_pc_mobile/common/constants/app_sizes.dart';
import 'package:build_pc_mobile/common/presentation/navigation/route_names.dart';
import 'package:build_pc_mobile/common/widgets/custom_button_widget.dart';
import 'package:build_pc_mobile/common/widgets/custom_icon_button_route_page.dart';
import 'package:build_pc_mobile/common/widgets/custom_logo_widget.dart';
import 'package:build_pc_mobile/home/presentation/state/dark_light_theme_notifier.dart';
import 'package:build_pc_mobile/home/presentation/widgets/custom_dark_mode_button.dart';
import 'package:build_pc_mobile/profile/presentation/widgets/custom_features_profile.dart';
import 'package:build_pc_mobile/profile/presentation/widgets/custom_label_profile.dart';
import 'package:ez_localization/ez_localization.dart';
import 'package:flutter/material.dart';
import 'package:panara_dialogs/panara_dialogs.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkLightThemeNotifier>(context);
    final authNotifier = Provider.of<AuthNotifier>(context);
    final isCheckLoggedIn = authNotifier.isLoggedIn;

    void logOut() {
      authNotifier.signOut();
      Navigator.pushNamed(context, RouteNames.loginPage);
    }

    const heightContainer = 400.0;
    const fontSizeContainer = 14.0;
    const fromSTEBTopContainer = 4.0;
    const fontSizeText = 24.0;
    const fontSize = 16.0;
    const sizeContainer = 80.0;
    const fontFamily = 'Lexend Deca';
    const fromSTEBTop = 8.0;

    const fromSTEBStartButtonLogOut = 140.0;
    const fromSTEBEndButtonLogOut = 140.0;
    const fromSTEBBottomButtonLogOut = 20.0;
    const heightButtonLogOut = 50.0;
    const borderRadiusButtonLogOut = 25.0;
    const fontSizeButtonButtonLogOut = 16.0;

    const sizeIcon = 20.0;

    return Scaffold(
      backgroundColor: themeChange.darkTheme
          ? AppDarkColors.primaryBackgroundDarkColor
          : AppLightColors.primaryBackgroundLightColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 1.0,
                  height: heightContainer,
                  decoration: const BoxDecoration(
                    color: AppColors.primaryColor,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0, 100, 0, 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CustomLogoWidget(
                          label: 'PcBuild',
                          fontSize: 60,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
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
                                  CustomLabelProfile(
                                    labelText: isCheckLoggedIn
                                        ? authNotifier.currentUser?.name ?? ""
                                        : context.getString(
                                            'profile.user_status.user_name',
                                          ),
                                    fontFamily: fontFamily,
                                    textColor: themeChange.darkTheme
                                        ? AppLightColors.primaryTextLightColor
                                        : AppDarkColors.primaryTextDarkColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: fontSizeText,
                                    fromSTEBStart: 0,
                                    fromSTEBTop: fromSTEBTop,
                                    fromSTEBEnd: 0,
                                    fromSTEBBottom: 0,
                                  ),
                                  CustomLabelProfile(
                                    labelText: isCheckLoggedIn
                                        ? "User"
                                        : context.getString(
                                            'profile.user_status.status',
                                          ),
                                    fontFamily: fontFamily,
                                    textColor: AppColors.secondaryTextColor,
                                    fontWeight: FontWeight.normal,
                                    fontSize: fontSizeContainer,
                                    fromSTEBStart: 0,
                                    fromSTEBTop: fromSTEBTopContainer,
                                    fromSTEBEnd: 0,
                                    fromSTEBBottom: 0,
                                  ),
                                  CustomLabelProfile(
                                    labelText: isCheckLoggedIn
                                        ? authNotifier.currentUser?.email ?? ""
                                        : context.getString(
                                            'profile.user_status.email',
                                          ),
                                    fontFamily: fontFamily,
                                    textColor: AppColors.secondaryColor,
                                    fontWeight: FontWeight.normal,
                                    fontSize: fontSizeContainer,
                                    fromSTEBStart: 0,
                                    fromSTEBTop: fromSTEBTopContainer,
                                    fromSTEBEnd: 0,
                                    fromSTEBBottom: 0,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            CustomFeaturesProfile(
              isDarkMode: themeChange.darkTheme,
              backgroundColorForLightMode:
                  AppLightColors.secondaryBackgroundLightColor,
              backgroundColorForDarkMode: AppColors.blackColor,
              textFeatureProfile: themeChange.darkTheme
                  ? context.getString(
                      'profile.switch_dark_mode.dark_mode',
                    )
                  : context.getString(
                      'profile.switch_dark_mode.light_mode',
                    ),
              fontFamily: fontFamily,
              fontWeight: FontWeight.normal,
              fontSize: fontSize,
              widget: const CustomDarkModeButton(),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomFeaturesProfile(
                isDarkMode: themeChange.darkTheme,
                textFeatureProfile: context.getString(
                  'profile.account.account_settings',
                ),
                fontFamily: fontFamily,
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
            CustomFeaturesProfile(
              isDarkMode: themeChange.darkTheme,
              backgroundColorForLightMode:
                  AppLightColors.secondaryBackgroundLightColor,
              backgroundColorForDarkMode: AppColors.blackColor,
              textFeatureProfile: context.getString(
                'profile.account.edit_profile',
              ),
              fontFamily: fontFamily,
              fontWeight: FontWeight.normal,
              fontSize: fontSize,
              widget: CustomIconButtonRoutePage(
                icon: Icons.arrow_forward_ios_outlined,
                sizeIcon: sizeIcon,
                onPressed: () {
                  if (isCheckLoggedIn) {
                    Navigator.pushNamed(context, RouteNames.editProfilePage);
                  } else {
                    PanaraConfirmDialog.show(
                      context,
                      title: "Hello",
                      message: "To go to this page you need to be logged in",
                      confirmButtonText: "Confirm",
                      cancelButtonText: "Cancel",
                      textColor: AppColors.blackColor,
                      onTapCancel: () {
                        Navigator.pop(context);
                      },
                      onTapConfirm: () {
                        Navigator.pushNamed(context, RouteNames.loginPage);
                      },
                      panaraDialogType: PanaraDialogType.warning,
                      barrierDismissible: false,
                    );
                  }
                },
              ),
            ),
            const Divider(
              color: AppLightColors.accent1LightColor,
              height: 2,
            ),
            CustomFeaturesProfile(
              isDarkMode: themeChange.darkTheme,
              backgroundColorForLightMode:
                  AppLightColors.secondaryBackgroundLightColor,
              backgroundColorForDarkMode: AppColors.blackColor,
              textFeatureProfile: context.getString(
                'profile.account.change_password',
              ),
              fontFamily: fontFamily,
              fontWeight: FontWeight.normal,
              fontSize: fontSize,
              widget: CustomIconButtonRoutePage(
                icon: Icons.arrow_forward_ios_outlined,
                sizeIcon: sizeIcon,
                onPressed: () {
                  if (isCheckLoggedIn) {
                    Navigator.pushNamed(context, RouteNames.editProfilePage);
                  } else {
                    PanaraConfirmDialog.show(
                      context,
                      title: "Hello",
                      message: "To go to this page you need to be logged in",
                      confirmButtonText: "Confirm",
                      cancelButtonText: "Cancel",
                      textColor: AppColors.blackColor,
                      onTapCancel: () {
                        Navigator.pop(context);
                      },
                      onTapConfirm: () {
                        Navigator.pushNamed(context, RouteNames.loginPage);
                      },
                      panaraDialogType: PanaraDialogType.warning,
                      barrierDismissible: false,
                    );
                  }
                },
              ),
            ),
            const SizedBox(height: AppSizes.defaultPadding * 1.5),
            CustomButtonWidget(
              fromSTEBStart: fromSTEBStartButtonLogOut,
              fromSTEBTop: 0,
              fromSTEBEnd: fromSTEBEndButtonLogOut,
              fromSTEBBottom: fromSTEBBottomButtonLogOut,
              heightContainer: heightButtonLogOut,
              borderRadius: borderRadiusButtonLogOut,
              onPressed: logOut,
              nameButton: context.getString('profile.account.log_out'),
              colorButton: AppLightColors.primaryBackgroundLightColor,
              fontSizeButton: fontSizeButtonButtonLogOut,
              colorTextButton: AppColors.primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
