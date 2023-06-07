import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ssd_cells_type.freezed.dart';

part 'ssd_cells_type.g.dart';

@freezed
class SsdCellsType with _$SsdCellsType implements BaseComponent {
  const factory SsdCellsType ({
    required int id,
    required String name,
  }) = _SsdCellsType;

  const SsdCellsType._();

  factory SsdCellsType.fromJson(Map<String, dynamic> json) =>
      _$SsdCellsTypeFromJson(json);

  @override
  List<String> parsedModels() {
    final fields = [id.toString(), name];

    return fields;
  }
}
