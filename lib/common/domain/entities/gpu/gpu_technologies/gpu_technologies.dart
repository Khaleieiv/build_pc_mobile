import 'package:freezed_annotation/freezed_annotation.dart';

part 'gpu_technologies.freezed.dart';

part 'gpu_technologies.g.dart';

@freezed
class GPUTechnologies with _$GPUTechnologies{
  const factory GPUTechnologies ({
    required int id,
    required String name,
  }) = _GPUTechnologies;

  factory GPUTechnologies.fromJson(Map<String, dynamic> json) =>
      _$GPUTechnologiesFromJson(json);
}
