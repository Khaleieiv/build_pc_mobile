import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_factor.freezed.dart';

part 'form_factor.g.dart';

@freezed
class FormFactor with _$FormFactor{
  const factory FormFactor({
    required int id,
    required String name,
  }) = _FormFactor;

  factory FormFactor.fromJson(Map<String, dynamic> json) =>
      _$FormFactorFromJson(json);
}
