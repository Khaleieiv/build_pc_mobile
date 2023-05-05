import 'package:freezed_annotation/freezed_annotation.dart';

part 'storage_interface.freezed.dart';

part 'storage_interface.g.dart';

@freezed
class StorageInterface with _$StorageInterface {
  const factory StorageInterface ({
    required int id,
    required String name,
  }) = _StorageInterface;

  factory StorageInterface.fromJson(Map<String, dynamic> json) =>
      _$StorageInterfaceFromJson(json);
}
