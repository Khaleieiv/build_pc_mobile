import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ram_memory_type.freezed.dart';

part 'ram_memory_type.g.dart';

@freezed
class RamMemoryType with _$RamMemoryType implements BaseComponent{
  const factory RamMemoryType({
    required int id,
    @JsonKey(name: 'memoryType') required String name,
  }) = _RamMemoryType;

  const RamMemoryType._();

  factory RamMemoryType.fromJson(Map<String, dynamic> json) =>
      _$RamMemoryTypeFromJson(json);

  @override
  List<String> parsedModels() {
    final fields = [id.toString(), name];

    return fields;
  }
}
