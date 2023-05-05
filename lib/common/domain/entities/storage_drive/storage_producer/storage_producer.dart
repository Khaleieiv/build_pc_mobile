import 'package:freezed_annotation/freezed_annotation.dart';

part 'storage_producer.freezed.dart';

part 'storage_producer.g.dart';

@freezed
class StorageProducer with _$StorageProducer {
  const factory StorageProducer ({
    required int id,
    required String name,
  }) = _StorageProducer;

  factory StorageProducer.fromJson(Map<String, dynamic> json) =>
      _$StorageProducerFromJson(json);
}
