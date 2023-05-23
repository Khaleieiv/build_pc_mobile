import 'package:build_pc_mobile/common/constants/app_colors.dart';
import 'package:build_pc_mobile/home/presentation/state/dark_light_theme_provider.dart';
import 'package:build_pc_mobile/home/presentation/widgets/custom_dark_mode_button.dart';
import 'package:build_pc_mobile/home/presentation/widgets/styles_dark_light_theme.dart';
import 'package:build_pc_mobile/profile/presentation/pages/profile_page.dart';
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

    return MaterialApp(
      theme: StylesDarkLightTheme.themeData(
        isDarkTheme: themeChange.darkTheme,
      ),
      home: Scaffold(
        appBar: isAppBarEnabled
            ? AppBar(
                backgroundColor: AppColors.primaryColor,
                actions: const [
                  CustomDarkModeButton(),
                  SizedBox(
                    width: 5,
                  )
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
                ? const Color(0xff000000)
                : const Color(0xffffffff),
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
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
              child: GNav(
                rippleColor: AppColors.primaryColor,
                activeColor: AppColors.primaryColor,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                duration: const Duration(milliseconds: 400),
                tabBackgroundColor: const Color(0xFFF1F4F8),
                color: Colors.grey,
                tabs: [
                  GButton(
                    onPressed: () {
                      isAppBarEnabled = true;
                    },
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    onPressed: () {
                      isAppBarEnabled = true;
                    },
                    icon: Icons.list,
                    text: 'Likes',
                  ),
                  GButton(
                    onPressed: () {
                      isAppBarEnabled = true;
                    },
                    icon: Icons.search,
                    text: 'Search',
                  ),
                  GButton(
                    onPressed: () {
                      isAppBarEnabled = false;
                    },
                    icon: Icons.person,
                    text: 'Profile',
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
      ),
    );
  }
}
