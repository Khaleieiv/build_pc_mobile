import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gpu_technologies.freezed.dart';

part 'gpu_technologies.g.dart';

@freezed
class GPUTechnologies with _$GPUTechnologies implements BaseComponent{
  const factory GPUTechnologies ({
    required int id,
    required String name,
  }) = _GPUTechnologies;

  const GPUTechnologies._();

  factory GPUTechnologies.fromJson(Map<String, dynamic> json) =>
      _$GPUTechnologiesFromJson(json);

  @override
  List<String> parsedModels() {
    final fields = [id.toString(), name];

    return fields;
  }
}
