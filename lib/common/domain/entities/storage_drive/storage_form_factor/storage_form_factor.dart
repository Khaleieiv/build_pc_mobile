import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'storage_form_factor.freezed.dart';

part 'storage_form_factor.g.dart';

@freezed
class StorageFormFactor with _$StorageFormFactor implements BaseComponent {
  const factory StorageFormFactor ({
    required int id,
    required String name,
  }) = _StorageFormFactor;

  const StorageFormFactor._();

  factory StorageFormFactor.fromJson(Map<String, dynamic> json) =>
      _$StorageFormFactorFromJson(json);

  @override
  List<String> parsedModels() {
    final fields = [id.toString(), name];

    return fields;
  }
}
