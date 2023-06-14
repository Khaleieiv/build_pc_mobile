import 'package:build_pc_mobile/auth/presentation/pages/login_page.dart';
import 'package:build_pc_mobile/auth/presentation/pages/registration_page.dart';
import 'package:build_pc_mobile/build_pc/presentation/pages/add_component_to_build_page.dart';
import 'package:build_pc_mobile/build_pc/presentation/pages/build_pc_page.dart';
import 'package:build_pc_mobile/build_pc/presentation/pages/info_buildpc_page.dart';
import 'package:build_pc_mobile/build_pc/presentation/pages/list_component_page.dart';
import 'package:build_pc_mobile/common/presentation/injector/injection_container.dart';
import 'package:build_pc_mobile/common/presentation/navigation/route_names.dart';
import 'package:build_pc_mobile/component_comparison/presentation/pages/comparison_page.dart';
import 'package:build_pc_mobile/component_comparison/presentation/pages/component_comparison_page.dart';
import 'package:build_pc_mobile/component_comparison/presentation/pages/component_page.dart';
import 'package:build_pc_mobile/home/presentation/pages/home_page.dart';
import 'package:build_pc_mobile/home/presentation/state/dark_light_theme_notifier.dart';
import 'package:build_pc_mobile/home/presentation/widgets/styles_dark_light_theme.dart';
import 'package:build_pc_mobile/profile/presentation/pages/change_password_page.dart';
import 'package:build_pc_mobile/profile/presentation/pages/edit_profile_page.dart';
import 'package:build_pc_mobile/profile/presentation/pages/profile_page.dart';
import 'package:build_pc_mobile/rating/presentation/pages/rating_page.dart';
import 'package:ez_localization/ez_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const InjectionContainer(child: Main()));
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkLightThemeNotifier>(context);

    return EzLocalizationBuilder(
      delegate: const EzLocalizationDelegate(
        supportedLocales: [
          Locale('en'),
          Locale('ua'),
        ],
      ),
      builder: (context, localizationDelegate) => MaterialApp(
        theme: StylesDarkLightTheme.themeData(
          isDarkTheme: themeChange.darkTheme,
        ),
        initialRoute: RouteNames.loginPage,
        routes: {
          RouteNames.loginPage: (_) => const LoginPage(),
          RouteNames.registerPage: (_) => const RegistrationPage(),
          RouteNames.homePage: (_) => const HomePage(),
          RouteNames.profilePage: (_) => const ProfilePage(),
          RouteNames.editProfilePage: (_) => const EditProfilePage(),
          RouteNames.componentComparisonPage: (_) =>
              const ComponentComparisonPage(),
          RouteNames.componentsPage: (_) => const ComponentPage(),
          RouteNames.comparisonPage: (_) => const ComparisonPage(),
          RouteNames.buildPcPage: (_) => const BuildPcPage(),
          RouteNames.addComponentToBuildPage: (_) =>
              const AddComponentToBuildPage(),
          RouteNames.listComponentPage: (_) => const ListComponentPage(),
          RouteNames.ratingPage: (_) => const RatingPage(),
          RouteNames.changePasswordPage: (_) => const ChangePasswordPage(),
          RouteNames.infoBuildPcPage: (_) => const InfoBuildPcPage(),

        },
        localizationsDelegates: localizationDelegate.localizationDelegates,
        supportedLocales: localizationDelegate.supportedLocales,
        localeResolutionCallback: localizationDelegate.localeResolutionCallback,
      ),
    );
  }
}
