import 'package:freezed_annotation/freezed_annotation.dart';

part 'cpu_producer.freezed.dart';

part 'cpu_producer.g.dart';

@freezed
class CPUProducer with _$CPUProducer {
  const factory CPUProducer ({
    required int id,
    required String producer,
  }) = _CPUProducer;

  factory CPUProducer.fromJson(Map<String, dynamic> json) =>
      _$CPUProducerFromJson(json);
}
