import 'package:freezed_annotation/freezed_annotation.dart';

part 'gpu_producer.freezed.dart';

part 'gpu_producer.g.dart';

@freezed
class GPUProducer with _$GPUProducer{
  const factory GPUProducer ({
    required int id,
    required String producer,
  }) = _GPUProducer;

  factory GPUProducer.fromJson(Map<String, dynamic> json) =>
      _$GPUProducerFromJson(json);
}
