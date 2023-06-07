import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'producers.freezed.dart';

part 'producers.g.dart';

@freezed
class Producers with _$Producers implements BaseComponent {
  const factory Producers({
    required int id,
    required String name,
  }) = _Producers;

  const Producers._();

  factory Producers.fromJson(Map<String, dynamic> json) =>
      _$ProducersFromJson(json);

  @override
  List<String> parsedModels() {
    final fields = [id.toString(), name];

    return fields;
  }
}
