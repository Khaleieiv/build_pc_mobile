import 'package:freezed_annotation/freezed_annotation.dart';

part 'ram_timings.freezed.dart';

part 'ram_timings.g.dart';

@freezed
class RamTimings with _$RamTimings {
  const factory RamTimings ({
    required int id,
    required String timings,
  }) = _RamTimings;

  factory RamTimings.fromJson(Map<String, dynamic> json) =>
      _$RamTimingsFromJson(json);
}
