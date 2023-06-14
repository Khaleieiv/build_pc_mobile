import 'package:build_pc_mobile/auth/data/repositories/auth_repository_impl.dart';
import 'package:build_pc_mobile/auth/presentation/state/auth_notifier.dart';
import 'package:build_pc_mobile/build_pc/data/repositories/build_pc_repository_impl.dart';
import 'package:build_pc_mobile/build_pc/data/repositories/components_for_build_pc_repository_impl.dart';
import 'package:build_pc_mobile/build_pc/presentation/state/build_pc_notifier.dart';
import 'package:build_pc_mobile/build_pc/presentation/state/components_for_build_pc_notifier.dart';
import 'package:build_pc_mobile/build_pc/presentation/state/selected_component_for_build_notifier.dart';
import 'package:build_pc_mobile/common/data/repositories/cooler_repository_impl.dart';
import 'package:build_pc_mobile/common/data/repositories/cpu_repository_impl.dart';
import 'package:build_pc_mobile/common/data/repositories/gpu_repository_impl.dart';
import 'package:build_pc_mobile/common/data/repositories/hdd_repository_impl.dart';
import 'package:build_pc_mobile/common/data/repositories/motherboard_repository_impl.dart';
import 'package:build_pc_mobile/common/data/repositories/pc_case_repository_impl.dart';
import 'package:build_pc_mobile/common/data/repositories/power_supply_repository_impl.dart';
import 'package:build_pc_mobile/common/data/repositories/ram_repository_impl.dart';
import 'package:build_pc_mobile/common/data/repositories/ssd_repository_impl.dart';
import 'package:build_pc_mobile/common/presentation/state/cooler_notifier.dart';
import 'package:build_pc_mobile/common/presentation/state/cpu_notifier.dart';
import 'package:build_pc_mobile/common/presentation/state/gpu_notifier.dart';
import 'package:build_pc_mobile/common/presentation/state/hdd_notifier.dart';
import 'package:build_pc_mobile/common/presentation/state/motherboard_notifier.dart';
import 'package:build_pc_mobile/common/presentation/state/pc_case_notifier.dart';
import 'package:build_pc_mobile/common/presentation/state/power_supply_notifier.dart';
import 'package:build_pc_mobile/common/presentation/state/ram_notifier.dart';
import 'package:build_pc_mobile/common/presentation/state/ssd_notifier.dart';
import 'package:build_pc_mobile/component_comparison/presentation/state/component_comparison_notifier.dart';
import 'package:build_pc_mobile/home/presentation/state/dark_light_theme_notifier.dart';
import 'package:build_pc_mobile/profile/data/repositories/profile_repository_impl.dart';
import 'package:build_pc_mobile/profile/presentation/state/profile_notifier.dart';
import 'package:build_pc_mobile/rating/data/repositories/rating_repository_impl.dart';
import 'package:build_pc_mobile/rating/presentation/state/rating_notifier.dart';
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
  CPUNotifier? _cpuNotifier;
  CoolerNotifier? _coolerNotifier;
  GPUNotifier? _gpuNotifier;
  MotherboardNotifier? _motherboardNotifier;
  PcCaseNotifier? _pcCaseNotifier;
  PowerSupplyNotifier? _powerSupplyNotifier;
  RamNotifier? _ramNotifier;
  HddNotifier? _hddNotifier;
  SsdNotifier? _ssdNotifier;
  BuildPcNotifier? _buildPcNotifier;
  ComponentsForBuildPcNotifier? _componentsForBuildPcNotifier;
  ProfileNotifier? _profileNotifier;
  RatingNotifier? _ratingNotifier;

  final _darkLightThemeNotifier = DarkLightThemeNotifier();
  final _componentComparisonNotifier = ComponentComparisonNotifier();
  final _selectedComponentForBuildNotifier =
      SelectedComponentForBuildNotifier();

  @override
  void initState() {
    final authRepository = AuthRepositoryImpl();
    _authNotifier = AuthNotifier(
      authRepository,
    );
    final cpuRepository = CPURepositoryImpl();
    _cpuNotifier = CPUNotifier(
      cpuRepository,
    );
    final coolerRepository = CoolerRepositoryImpl();
    _coolerNotifier = CoolerNotifier(
      coolerRepository,
    );
    final gpuRepository = GPURepositoryImpl();
    _gpuNotifier = GPUNotifier(
      gpuRepository,
    );
    final motherboardRepository = MotherboardRepositoryImpl();
    _motherboardNotifier = MotherboardNotifier(
      motherboardRepository,
    );
    final pcCaseRepository = PcCaseRepositoryImpl();
    _pcCaseNotifier = PcCaseNotifier(
      pcCaseRepository,
    );
    final powerSupplyRepository = PowerSupplyRepositoryImpl();
    _powerSupplyNotifier = PowerSupplyNotifier(
      powerSupplyRepository,
    );
    final ramRepository = RamRepositoryImpl();
    _ramNotifier = RamNotifier(
      ramRepository,
    );
    final hddRepository = HddRepositoryImpl();
    _hddNotifier = HddNotifier(
      hddRepository,
    );
    final ssdRepository = SsdRepositoryImpl();
    _ssdNotifier = SsdNotifier(
      ssdRepository,
    );
    final buildPcRepository = BuildPcRepositoryImpl();
    _buildPcNotifier = BuildPcNotifier(
      buildPcRepository,
    );
    final componentsForBuildPcRepositoryImpl =
        ComponentsForBuildPcRepositoryImpl();
    _componentsForBuildPcNotifier = ComponentsForBuildPcNotifier(
      componentsForBuildPcRepositoryImpl,
    );
    final _profileRepositoryImpl = ProfileRepositoryImpl();
    _profileNotifier = ProfileNotifier(
      _profileRepositoryImpl,
    );
    final _ratingRepositoryImpl = RatingRepositoryImpl();
    _ratingNotifier = RatingNotifier(_ratingRepositoryImpl,);

    getCurrentAppTheme();
    super.initState();
  }

  Future<void> getCurrentAppTheme() async {
    final darkTheme =
        await _darkLightThemeNotifier.darkThemePreference.getTheme();
    _darkLightThemeNotifier.darkTheme = darkTheme;
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: _darkLightThemeNotifier),
        ChangeNotifierProvider.value(value: _authNotifier),
        ChangeNotifierProvider.value(value: _cpuNotifier),
        ChangeNotifierProvider.value(value: _coolerNotifier),
        ChangeNotifierProvider.value(value: _gpuNotifier),
        ChangeNotifierProvider.value(value: _motherboardNotifier),
        ChangeNotifierProvider.value(value: _pcCaseNotifier),
        ChangeNotifierProvider.value(value: _powerSupplyNotifier),
        ChangeNotifierProvider.value(value: _ramNotifier),
        ChangeNotifierProvider.value(value: _hddNotifier),
        ChangeNotifierProvider.value(value: _ssdNotifier),
        ChangeNotifierProvider.value(value: _componentComparisonNotifier),
        ChangeNotifierProvider.value(value: _buildPcNotifier),
        ChangeNotifierProvider.value(value: _selectedComponentForBuildNotifier),
        ChangeNotifierProvider.value(value: _componentsForBuildPcNotifier),
        ChangeNotifierProvider.value(value: _profileNotifier),
        ChangeNotifierProvider.value(value: _ratingNotifier),
      ],
      child: widget.child,
    );
  }
}
