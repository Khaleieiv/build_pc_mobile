import 'package:build_pc_mobile/auth/presentation/state/auth_notifier.dart';
import 'package:build_pc_mobile/build_pc/presentation/pages/build_pc_page.dart';
import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:build_pc_mobile/common/presentation/navigation/route_names.dart';
import 'package:build_pc_mobile/component_comparison/presentation/pages/component_comparison_page.dart';
import 'package:build_pc_mobile/home/presentation/state/dark_light_theme_notifier.dart';
import 'package:build_pc_mobile/home/presentation/widgets/custom_dropdown_button_for_localization.dart';
import 'package:build_pc_mobile/profile/presentation/pages/profile_page.dart';
import 'package:build_pc_mobile/rating/presentation/pages/rating_page.dart';
import 'package:ez_localization/ez_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:panara_dialogs/panara_dialogs.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  bool isAppBarEnabled = true;

  final List<Widget> _widgetOptions = <Widget>[
    const ComponentComparisonPage(),
    const BuildPcPage(),
    const RatingPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkLightThemeNotifier>(context);
    final authNotifier = Provider.of<AuthNotifier>(context);

    final List<String> _widgetLabel = <String>[
      context.getString(
        'home.bottom_navigation_bar.component_comparison',
      ),
      context.getString(
        'home.bottom_navigation_bar.pc_build',
      ),
      context.getString(
        'home.bottom_navigation_bar.rating',
      ),
      context.getString(
        'home.bottom_navigation_bar.profile',
      ),
    ];

    const gap = 3.0;

    return Scaffold(
      appBar: isAppBarEnabled
          ? AppBar(
              backgroundColor: AppColors.primaryColor,
              actions: [
                CustomDropdownButtonForLocalization(
                  localFirstLanguage: 'en',
                  localSecondLanguage: 'ua',
                  flagFirst: '🇺🇸',
                  flagSecond: '🇺🇦',
                  labelFirstLanguage: context.getString(
                    'home.localization.first_language',
                  ),
                  labelSecondLanguage: context.getString(
                    'home.localization.second_language',
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
              ],
              excludeHeaderSemantics: true,
              automaticallyImplyLeading: false,
              title: Text(
                _widgetLabel.elementAt(_selectedIndex),
              ),
            )
          : null,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: DecoratedBox(
        decoration: BoxDecoration(
          color: themeChange.darkTheme
              ? AppColors.blackColor
              : AppColors.tertiaryColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 1,
              color: themeChange.darkTheme
                  ? Colors.white.withOpacity(1)
                  : Colors.black.withOpacity(1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: AppColors.primaryColor,
              activeColor: AppColors.primaryColor,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: AppLightColors.primaryBackgroundLightColor,
              color: AppColors.grayIconColor,
              tabs: [
                GButton(
                  onPressed: () {
                    isAppBarEnabled = true;
                  },
                  gap: gap,
                  icon: Icons.checklist,
                  text: _widgetLabel.elementAt(_selectedIndex),
                ),
                GButton(
                  onPressed: () {
                    isAppBarEnabled = true;
                    if (!authNotifier.isLoggedIn) {
                      PanaraConfirmDialog.show(
                        context,
                        title: context.getString("profile.account.hello"),
                        message:
                            context.getString("profile.account.login_required"),
                        confirmButtonText:
                            context.getString("profile.account.confirm"),
                        cancelButtonText:
                            context.getString("profile.account.cancel"),
                        textColor: AppColors.blackColor,
                        onTapCancel: () {
                          Navigator.pushNamed(context, RouteNames.homePage);
                        },
                        onTapConfirm: () {
                          Navigator.pushNamed(context, RouteNames.loginPage);
                        },
                        panaraDialogType: PanaraDialogType.warning,
                        barrierDismissible: false,
                      );
                    }
                  },
                  gap: gap,
                  icon: Icons.build_circle_outlined,
                  text: _widgetLabel.elementAt(_selectedIndex),
                ),
                GButton(
                  onPressed: () {
                    isAppBarEnabled = true;
                    if (!authNotifier.isLoggedIn) {
                      PanaraConfirmDialog.show(
                        context,
                        title: context.getString("profile.account.hello"),
                        message:
                            context.getString("profile.account.login_required"),
                        confirmButtonText:
                            context.getString("profile.account.confirm"),
                        cancelButtonText:
                            context.getString("profile.account.cancel"),
                        textColor: AppColors.blackColor,
                        onTapCancel: () {
                          Navigator.pushNamed(context, RouteNames.homePage);
                        },
                        onTapConfirm: () {
                          Navigator.pushNamed(context, RouteNames.loginPage);
                        },
                        panaraDialogType: PanaraDialogType.warning,
                        barrierDismissible: false,
                      );
                    }
                  },
                  gap: gap,
                  icon: Icons.star_border,
                  text: _widgetLabel.elementAt(_selectedIndex),
                ),
                GButton(
                  onPressed: () {
                    isAppBarEnabled = false;
                  },
                  gap: gap,
                  icon: Icons.person,
                  text: _widgetLabel.elementAt(_selectedIndex),
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
