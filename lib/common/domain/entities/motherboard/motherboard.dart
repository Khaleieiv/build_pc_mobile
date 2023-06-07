import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:build_pc_mobile/common/domain/entities/cpu/cpu_generation/cpu_generation.dart';
import 'package:build_pc_mobile/common/domain/entities/cpu/cpu_pcie_version/cpu_pcie_version.dart';
import 'package:build_pc_mobile/common/domain/entities/form_factor/form_factor.dart';
import 'package:build_pc_mobile/common/domain/entities/motherboard/motherboard_chipset/motherboard_chipset.dart';
import 'package:build_pc_mobile/common/domain/entities/motherboard/motherboard_network/motherboard_network.dart';
import 'package:build_pc_mobile/common/domain/entities/motherboard/motherboard_socket/motherboard_socket.dart';
import 'package:build_pc_mobile/common/domain/entities/performance_level/performance_level.dart';
import 'package:build_pc_mobile/common/domain/entities/producer/producers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'motherboard.freezed.dart';
part 'motherboard.g.dart';

@freezed
class Motherboard with _$Motherboard implements BaseComponent {
  const factory Motherboard({
    required int id,
    required String name,
    required MotherboardSocket socket,
    required List<CPUGeneration> cpuGenerations,
    required MotherboardChipset motherboardChipset,
    required FormFactor formFactor,
    required Producers motherboardProducer,
    required int maxTdpOfProcessors,
    required int memorySlots,
    required int supportedMemoryFrequency,
    required int maxAmountOfRam,
    required MotherboardNetwork motherboardNetwork,
    required bool bluetooth,
    required bool wifi,
    required CPUPcieVersion cpuPcieVersion,
    // ignore: non_constant_identifier_names
    required int pci_express_x16,
    // ignore: non_constant_identifier_names
    required int pci_express_x4,
    // ignore: non_constant_identifier_names
    required int pci_express_x1,
    required int sata3,
    required int m2,
    required bool dSub,
    required int dvi,
    required int hdmi,
    required int displayPort,
    required int usb_2_0,
    required int usb_3_0,
    // ignore: non_constant_identifier_names
    required int usb_type_c,
    required bool digitalAudioJack,
    required String description,
    required int recommendedPrice,
    required PerformanceLevel performanceLevel,
  }) = _Motherboard;

  const Motherboard._();

  factory Motherboard.fromJson(Map<String, dynamic> json) =>
      _$MotherboardFromJson(json);

  @override
  List<String?> parsedModels() {
    final cpuGen = [];
    for (final generation in cpuGenerations) {
      cpuGen.add(generation.name);
    }

    final fields = [
      name,
      socket.name,
      cpuGen.toString(),
      motherboardChipset.name,
      formFactor.toString(),
      motherboardProducer.name,
      maxTdpOfProcessors.toString(),
      memorySlots.toString(),
      maxTdpOfProcessors.toString(),
      memorySlots.toString(),
      supportedMemoryFrequency.toString(),
      maxAmountOfRam.toString(),
      motherboardNetwork.name,
      bluetooth.toString(),
      wifi.toString(),
      cpuPcieVersion.name,
      pci_express_x16.toString(),
      pci_express_x4.toString(),
      pci_express_x1.toString(),
      sata3.toString(),
      m2.toString(),
      dSub.toString(),
      dvi.toString(),
      hdmi.toString(),
      displayPort.toString(),
      usb_3_0.toString(),
      usb_2_0.toString(),
      usb_type_c.toString(),
      digitalAudioJack.toString(),
      recommendedPrice.toString(),
      performanceLevel.name,
      description,
    ];

    return fields;
  }
}
