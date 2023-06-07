import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cpu_tech.freezed.dart';

part 'cpu_tech.g.dart';

@freezed
class CPUTech with _$CPUTech implements BaseComponent {
  const factory CPUTech ({
    required int id,
    required String name,
  }) = _CPUTech;

  const CPUTech._();

  factory CPUTech.fromJson(Map<String, dynamic> json) =>
      _$CPUTechFromJson(json);

  @override
  List<String> parsedModels() {
    final fields = [id.toString(), name];

    return fields;
  }
}
