import 'package:build_pc_mobile/auth/presentation/pages/login_page.dart';
import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:build_pc_mobile/common/widgets/custom_logo_widget.dart';
import 'package:build_pc_mobile/home/presentation/state/dark_light_theme_provider.dart';
import 'package:build_pc_mobile/home/presentation/widgets/custom_dark_mode_button.dart';
import 'package:build_pc_mobile/profile/presentation/widgets/custom_features_profile.dart';
import 'package:build_pc_mobile/profile/presentation/widgets/custom_icon_button_route_page.dart';
import 'package:build_pc_mobile/profile/presentation/widgets/custom_label_profile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkLightThemeProvider>(context);
    const heightContainer = 400.0;
    const fontSizeText = 24.0;
    const fontSize = 16.0;
    const sizeContainer = 80.0;
    const fontFamily = 'Lexend Deca';
    const fromSTEBTop = 8.0;

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
                        const CustomLogoWidget(),
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
                                    labelText:
                                    'Guest User',
                                    fontFamily: fontFamily,
                                    textColor: themeChange.darkTheme
                                        ? AppLightColors
                                        .primaryTextLightColor
                                        : AppDarkColors
                                        .primaryTextDarkColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: fontSizeText,
                                    fromSTEBStart: 0,
                                    fromSTEBTop: fromSTEBTop,
                                    fromSTEBEnd: 0,
                                    fromSTEBBottom: 0,
                                  ),
                                  const CustomLabelProfile(
                                    labelText:
                                    'Guest',
                                    fontFamily: fontFamily,
                                    textColor: AppColors.secondaryTextColor,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.0,
                                    fromSTEBStart: 0,
                                    fromSTEBTop: 4,
                                    fromSTEBEnd: 0,
                                    fromSTEBBottom: 0,
                                  ),
                                  const CustomLabelProfile(
                                    labelText:
                                        'No Email Associated with Account',
                                    fontFamily: fontFamily,
                                    textColor: AppColors.secondaryColor,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.0,
                                    fromSTEBStart: 0,
                                    fromSTEBTop: 4,
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
                  ? 'Switch to Dark Mode'
                  : 'Switch to Light Mode',
              fontFamily: fontFamily,
              fontWeight: FontWeight.normal,
              fontSize: fontSize,
              widget: const CustomDarkModeButton(),
            ),
            CustomFeaturesProfile(
              isDarkMode: themeChange.darkTheme,
              textFeatureProfile: 'Account Settings',
              fontFamily: fontFamily,
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
            ),
            CustomFeaturesProfile(
              isDarkMode: themeChange.darkTheme,
              backgroundColorForLightMode:
                  AppLightColors.secondaryBackgroundLightColor,
              backgroundColorForDarkMode: AppColors.blackColor,
              textFeatureProfile: 'Edit Profile',
              fontFamily: fontFamily,
              fontWeight: FontWeight.normal,
              fontSize: fontSize,
              widget: const CustomIconButtonRoutePage(
                widget: LoginPage(),
                icon: Icons.arrow_forward_ios_outlined,
                sizeIcon: 20,
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
              textFeatureProfile: 'Change Password',
              fontFamily: fontFamily,
              fontWeight: FontWeight.normal,
              fontSize: fontSize,
              widget: const CustomIconButtonRoutePage(
                widget: LoginPage(),
                icon: Icons.arrow_forward_ios_outlined,
                sizeIcon: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
