import 'package:build_pc_mobile/common/domain/entities/cooler/cooler_material/cooler_material.dart';
import 'package:build_pc_mobile/common/domain/entities/cooler/cooler_producer/cooler_producer.dart';
import 'package:build_pc_mobile/common/domain/entities/cooler/cooler_socket/cooler_socket.dart';
import 'package:build_pc_mobile/common/domain/entities/performance_level/performance_level.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cooler.freezed.dart';
part 'cooler.g.dart';

@freezed
class Cooler with _$Cooler {
  const factory Cooler ({
    required int id,
    required String name,
    required CoolerProducer coolerProducer,
    required CoolerSocket coolerSocket,
    required CoolerMaterial coolerMaterial,
    required int maxTdp,
    required int thermalTubes,
    required String description,
    required int recommendedPrice,
    required PerformanceLevel performanceLevel,
  }) = _Cooler;

  factory Cooler.fromJson(Map<String, dynamic> json) => _$CoolerFromJson(json);
}
