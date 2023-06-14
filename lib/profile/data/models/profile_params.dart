import 'package:freezed_annotation/freezed_annotation.dart';


part 'profile_params.freezed.dart';
part 'profile_params.g.dart';

@freezed
class ProfileParams with _$ProfileParams {
  const factory ProfileParams({
    required int id,
    required String name,
    required String username,
    required String role,
    required String email,
  }) = _ProfileParams;

  factory ProfileParams.fromJson(Map<String, Object?> json)
  => _$ProfileParamsFromJson(json);
}
