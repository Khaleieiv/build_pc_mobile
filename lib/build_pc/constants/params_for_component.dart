import 'package:build_pc_mobile/build_pc/data/models/component_params.dart';

class ParamsForComponent {
  static final List<ComponentParams> listComponents = [
    ComponentParams(
      name: 'processor',
      imagePath: "assets/icons/cpu.png",
    ),
    ComponentParams(
      name: "motherboard",
      imagePath: "assets/icons/motherboard.png",
    ),
    ComponentParams(
      name: 'cooler',
      imagePath: "assets/icons/fan.png",
    ),
    ComponentParams(
      name: 'gpu',
      imagePath: "assets/icons/gpu.png",
    ),
    ComponentParams(
      name: 'memory',
      imagePath: "assets/icons/memory.png",
    ),
    ComponentParams(
      name: 'hdd',
      imagePath: "assets/icons/hdd.png",
    ),
    ComponentParams(
      name: 'ssd',
      imagePath: "assets/icons/ssd.png",
    ),
    ComponentParams(
      name: 'power_supply',
      imagePath: "assets/icons/power_supply.png",
    ),
    ComponentParams(
      name: 'case',
      imagePath: "assets/icons/case.png",
    ),
  ];
}
