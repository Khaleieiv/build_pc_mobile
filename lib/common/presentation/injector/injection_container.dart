import 'package:build_pc_mobile/auth/data/repositories/auth_repository.dart';
import 'package:build_pc_mobile/auth/presentation/state/auth_notifier.dart';
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

  @override
  void initState() {
    final authRepository = AuthRepository();
    _authNotifier = AuthNotifier(
      authRepository,
    );

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: _authNotifier),
      ],
      child: widget.child,
    );
  }
}
