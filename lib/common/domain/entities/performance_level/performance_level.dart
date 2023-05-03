import 'package:freezed_annotation/freezed_annotation.dart';

part 'performance_level.freezed.dart';

part 'performance_level.g.dart';

@freezed
class PerformanceLevel with _$PerformanceLevel {
  const factory PerformanceLevel({
    required int id,
    required String level,
  }) = _PerformanceLevel;

  factory PerformanceLevel.fromJson(Map<String, dynamic> json) =>
      _$PerformanceLevelFromJson(json);
}
