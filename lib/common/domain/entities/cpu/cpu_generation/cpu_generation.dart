import 'package:freezed_annotation/freezed_annotation.dart';

part 'cpu_generation.freezed.dart';

part 'cpu_generation.g.dart';

@freezed
class CPUGeneration with _$CPUGeneration {
  const factory CPUGeneration ({
    required int id,
    required String name,
  }) = _CPUGeneration;

  factory CPUGeneration.fromJson(Map<String, dynamic> json) =>
      _$CPUGenerationFromJson(json);
}
