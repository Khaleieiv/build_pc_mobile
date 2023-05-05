import 'package:freezed_annotation/freezed_annotation.dart';

part 'cpu_tech.freezed.dart';

part 'cpu_tech.g.dart';

@freezed
class CPUTech with _$CPUTech {
  const factory CPUTech ({
    required int id,
    required String name,
  }) = _CPUTech;

  factory CPUTech.fromJson(Map<String, dynamic> json) =>
      _$CPUTechFromJson(json);
}
