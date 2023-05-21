import 'package:build_pc_mobile/auth/presentation/pages/login_page.dart';
import 'package:build_pc_mobile/auth/presentation/pages/registration_page.dart';
import 'package:build_pc_mobile/common/presentation/injector/injection_container.dart';
import 'package:build_pc_mobile/common/presentation/navigation/route_names.dart';
import 'package:ez_localization/ez_localization.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Main()));
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InjectionContainer(
      child:  EzLocalizationBuilder(
        delegate: const EzLocalizationDelegate(
          supportedLocales: [
            Locale('en'),
            Locale('ua'),
          ],
        ),
        builder: (context, localizationDelegate) => MaterialApp(
          initialRoute: RouteNames.loginPage,
          routes: {
            RouteNames.loginPage: (_) => const LoginPage(),
            RouteNames.registerPage: (_) => const RegistrationPage(),
          },
          localizationsDelegates: localizationDelegate.localizationDelegates,
          supportedLocales: localizationDelegate.supportedLocales,
          localeResolutionCallback:
          localizationDelegate.localeResolutionCallback,
        ),
      ),
    );
  }
}
