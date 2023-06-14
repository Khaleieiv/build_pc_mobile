import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:build_pc_mobile/common/domain/entities/cooler/cooler_material/cooler_material.dart';
import 'package:build_pc_mobile/common/domain/entities/cooler/cooler_socket/cooler_socket.dart';
import 'package:build_pc_mobile/common/domain/entities/performance_level/performance_level.dart';
import 'package:build_pc_mobile/common/domain/entities/producer/producers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cooler.freezed.dart';

part 'cooler.g.dart';

@freezed
class Cooler with _$Cooler implements BaseComponent {
  const factory Cooler({
    required int id,
    required String name,
    @JsonKey(name: 'producer')
    required Producers coolerProducer,
    @JsonKey(name: 'socket')
    required List<CoolerSocket> coolerSocket,
    @JsonKey(name: 'material')
    required CoolerMaterial coolerMaterial,
    required int maxTdp,
    required int thermalTubes,
    required String description,
    required int recommendedPrice,
    required PerformanceLevel? performanceLevel,
  }) = _Cooler;

  const Cooler._();

  factory Cooler.fromJson(Map<String, dynamic> json) => _$CoolerFromJson(json);

  @override
  List<String?> parsedModels() {
    final coolerSocketField = [];
    for (final socket in coolerSocket) {
      coolerSocketField.add(socket.name);
    }

    final List<String?> fields = [
      name,
      coolerProducer.name,
      coolerSocketField.toString(),
      coolerMaterial.name,
      maxTdp.toString(),
      thermalTubes.toString(),
      recommendedPrice.toString(),
      performanceLevel?.name,
      description,
    ];

    return fields;
  }
}
