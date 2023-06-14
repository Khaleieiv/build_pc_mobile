import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:build_pc_mobile/common/domain/entities/performance_level/performance_level.dart';
import 'package:build_pc_mobile/common/domain/entities/producer/producers.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/storage_form_factor/storage_form_factor.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/storage_interface/storage_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hdd.freezed.dart';

part 'hdd.g.dart';

@freezed
class Hdd with _$Hdd implements BaseComponent {
  const factory Hdd({
    required int id,
    @JsonKey(name: 'producer') required Producers storageProducer,
    required String name,
    required int storageSize,
    required int speed,
    @JsonKey(name: 'formFactor') required StorageFormFactor storageFormFactor,
    required StorageInterface storageInterface,
    required int bufferSize,
    required int readingSpeed,
    required int writingSpeed,
    required String description,
    required int recommendedPrice,
    required PerformanceLevel? performanceLevel,
  }) = _Hdd;

  const Hdd._();

  factory Hdd.fromJson(Map<String, dynamic> json) => _$HddFromJson(json);

  @override
  List<String?> parsedModels() {
    final fields = [
      storageProducer.name,
      name,
      storageSize.toString(),
      speed.toString(),
      storageFormFactor.name,
      storageInterface.name,
      bufferSize.toString(),
      readingSpeed.toString(),
      writingSpeed.toString(),
      recommendedPrice.toString(),
      performanceLevel?.name,
      description,
    ];

    return fields;
  }
}
