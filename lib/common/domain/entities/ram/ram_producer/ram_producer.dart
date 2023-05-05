import 'package:freezed_annotation/freezed_annotation.dart';

part 'ram_producer.freezed.dart';

part 'ram_producer.g.dart';

@freezed
class RamProducer with _$RamProducer {
  const factory RamProducer({
    required int id,
    required String producer,
  }) = _RamProducer;

  factory RamProducer.fromJson(Map<String, dynamic> json) =>
      _$RamProducerFromJson(json);
}
