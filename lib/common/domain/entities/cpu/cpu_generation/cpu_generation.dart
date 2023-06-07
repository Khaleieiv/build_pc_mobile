import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cpu_generation.freezed.dart';

part 'cpu_generation.g.dart';

@freezed
class CPUGeneration with _$CPUGeneration implements BaseComponent {
  const factory CPUGeneration ({
    required int id,
    required String name,
  }) = _CPUGeneration;

  const CPUGeneration._();

  factory CPUGeneration.fromJson(Map<String, dynamic> json) =>
      _$CPUGenerationFromJson(json);

  @override
  List<String> parsedModels() {
    final fields = [id.toString(), name];

    return fields;
  }
}
