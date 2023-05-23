import 'package:build_pc_mobile/auth/data/repositories/auth_repository.dart';
import 'package:build_pc_mobile/auth/presentation/state/auth_notifier.dart';
import 'package:build_pc_mobile/home/presentation/state/dark_light_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InjectionContainer extends StatefulWidget {
  final Widget child;

  const InjectionContainer({Key? key, required this.child}) : super(key: key);

  @override
  State<InjectionContainer> createState() => _InjectionContainerState();
}

class _InjectionContainerState extends State<InjectionContainer> {
  AuthNotifier? _authNotifier;
  final _darkLightThemeProvider = DarkLightThemeProvider();

  @override
  void initState() {
    final authRepository = AuthRepository();
    _authNotifier = AuthNotifier(
      authRepository,
    );

    getCurrentAppTheme();

    super.initState();
  }

  Future<void> getCurrentAppTheme() async {
    final darkTheme =
        await _darkLightThemeProvider.darkThemePreference.getTheme();
    _darkLightThemeProvider.darkTheme = darkTheme;
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: _authNotifier),
        ChangeNotifierProvider.value(value: _darkLightThemeProvider),
      ],
      child: widget.child,
    );
  }
}
