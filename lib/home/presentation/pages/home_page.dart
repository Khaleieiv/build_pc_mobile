import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:build_pc_mobile/home/presentation/state/dark_light_theme_provider.dart';
import 'package:build_pc_mobile/home/presentation/widgets/custom_dropdown_button_for_localization.dart';
import 'package:build_pc_mobile/profile/presentation/pages/profile_page.dart';
import 'package:ez_localization/ez_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
    ),
    Text(
      'Likes',
    ),
    Text(
      'Search',
    ),
    ProfilePage(),
  ];

  int _selectedIndex = 0;
  bool isAppBarEnabled = true;

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkLightThemeProvider>(context);

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
              title: _widgetOptions.elementAt(_selectedIndex),
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
                  icon: Icons.home,
                  text: context.getString(
                    'home.bottom_navigation_bar.home',
                  ),
                ),
                GButton(
                  onPressed: () {
                    isAppBarEnabled = true;
                  },
                  icon: Icons.list,
                  text: context.getString(
                    'home.bottom_navigation_bar.likes',
                  ),
                ),
                GButton(
                  onPressed: () {
                    isAppBarEnabled = true;
                  },
                  icon: Icons.search,
                  text: context.getString(
                    'home.bottom_navigation_bar.search',
                  ),
                ),
                GButton(
                  onPressed: () {
                    isAppBarEnabled = false;
                  },
                  icon: Icons.person,
                  text: context.getString(
                    'home.bottom_navigation_bar.profile',
                  ),
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
