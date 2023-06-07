import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'storage_interface.freezed.dart';

part 'storage_interface.g.dart';

@freezed
class StorageInterface with _$StorageInterface implements BaseComponent {
  const factory StorageInterface ({
    required int id,
    required String name,
  }) = _StorageInterface;

  const StorageInterface._();

  factory StorageInterface.fromJson(Map<String, dynamic> json) =>
      _$StorageInterfaceFromJson(json);

  @override
  List<String> parsedModels() {
    final fields = [id.toString(), name];

    return fields;
  }
}
