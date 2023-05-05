import 'package:freezed_annotation/freezed_annotation.dart';

part 'storage_form_factor.freezed.dart';

part 'storage_form_factor.g.dart';

@freezed
class StorageFormFactor with _$StorageFormFactor {
  const factory StorageFormFactor ({
    required int id,
    required String name,
  }) = _StorageFormFactor;

  factory StorageFormFactor.fromJson(Map<String, dynamic> json) =>
      _$StorageFormFactorFromJson(json);
}
