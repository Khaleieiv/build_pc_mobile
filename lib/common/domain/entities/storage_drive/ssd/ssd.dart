import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:build_pc_mobile/common/domain/entities/performance_level/performance_level.dart';
import 'package:build_pc_mobile/common/domain/entities/producer/producers.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/ssd_cells_type/ssd_cells_type.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/storage_form_factor/storage_form_factor.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/storage_interface/storage_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ssd.freezed.dart';
part 'ssd.g.dart';

@freezed
class Ssd with _$Ssd implements BaseComponent{
  const factory Ssd({
    required int id,
    required Producers storageProducer,
    required String name,
    required int storageSize,
    required StorageFormFactor storageFormFactor,
    required StorageInterface storageInterface,
    required int bufferSize,
    required int readingSpeed,
    required int writingSpeed,
    required SsdCellsType ssdCellsType,
    required String description,
    required int recommendedPrice,
    required PerformanceLevel? performanceLevel,
  }) = _Ssd;

  const Ssd._();

  factory Ssd.fromJson(Map<String, dynamic> json) => _$SsdFromJson(json);

  @override
  List<String?> parsedModels() {
    final fields = [
      storageProducer.name,
      name,
      storageSize.toString(),
      storageFormFactor.name,
      storageInterface.name,
      bufferSize.toString(),
      readingSpeed.toString(),
      writingSpeed.toString(),
      ssdCellsType.name,
      recommendedPrice.toString(),
      performanceLevel?.name,
      description,
    ];

    return fields;
  }
}
