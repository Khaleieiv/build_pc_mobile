import 'package:freezed_annotation/freezed_annotation.dart';

part 'ram_memory_type.freezed.dart';

part 'ram_memory_type.g.dart';

@freezed
class RamMemoryType with _$RamMemoryType {
  const factory RamMemoryType({
    required int id,
    required String memoryType,
  }) = _RamMemoryType;

  factory RamMemoryType.fromJson(Map<String, dynamic> json) =>
      _$RamMemoryTypeFromJson(json);
}
