import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_factor.freezed.dart';

part 'form_factor.g.dart';

@freezed
class FormFactor with _$FormFactor implements BaseComponent {
  const factory FormFactor({
    required int id,
    required String name,
  }) = _FormFactor;

  const FormFactor._();

  factory FormFactor.fromJson(Map<String, dynamic> json) =>
      _$FormFactorFromJson(json);

  @override
  List<String> parsedModels() {
    final fields = [id.toString(), name];

    return fields;
  }
}
