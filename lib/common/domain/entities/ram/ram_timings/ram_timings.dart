import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ram_timings.freezed.dart';

part 'ram_timings.g.dart';

@freezed
class RamTimings with _$RamTimings implements BaseComponent{
  const factory RamTimings ({
    required int id,
    @JsonKey(name: 'timings') required String name,
  }) = _RamTimings;

  const RamTimings._();

  factory RamTimings.fromJson(Map<String, dynamic> json) =>
      _$RamTimingsFromJson(json);

  @override
  List<String> parsedModels() {
    final fields = [id.toString(), name];

    return fields;
  }
}
