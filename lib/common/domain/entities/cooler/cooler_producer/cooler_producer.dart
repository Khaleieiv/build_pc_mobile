import 'package:freezed_annotation/freezed_annotation.dart';

part 'cooler_producer.freezed.dart';

part 'cooler_producer.g.dart';

@freezed
class CoolerProducer with _$CoolerProducer {
  const factory CoolerProducer({
    required int id,
    required String name,
  }) = _CoolerProducer;

  factory CoolerProducer.fromJson(Map<String, dynamic> json) =>
      _$CoolerProducerFromJson(json);
}
