import 'package:freezed_annotation/freezed_annotation.dart';

part 'ssd_cells_type.freezed.dart';

part 'ssd_cells_type.g.dart';

@freezed
class SsdCellsType with _$SsdCellsType {
  const factory SsdCellsType ({
    required int id,
    required String name,
  }) = _SsdCellsType;

  factory SsdCellsType.fromJson(Map<String, dynamic> json) =>
      _$SsdCellsTypeFromJson(json);
}
