import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'performance_level.freezed.dart';

part 'performance_level.g.dart';

@freezed
class PerformanceLevel with _$PerformanceLevel implements BaseComponent {
  const factory PerformanceLevel({
    required int id,
    @JsonKey(name: 'level')
    required String? name,
  }) = _PerformanceLevel;

  const PerformanceLevel._();

  factory PerformanceLevel.fromJson(Map<String, dynamic> json) =>
      _$PerformanceLevelFromJson(json);

  @override
  List<String?> parsedModels() {
    final fields = [id.toString(), name];

    return fields;
  }
}
