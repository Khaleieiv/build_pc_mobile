import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'gpu_producer.freezed.dart';

part 'gpu_producer.g.dart';

@freezed
class GPUProducer with _$GPUProducer implements BaseComponent{
  const factory GPUProducer ({
    required int id,
    required String name,
  }) = _GPUProducer;

  const GPUProducer._();

  factory GPUProducer.fromJson(Map<String, dynamic> json) =>
      _$GPUProducerFromJson(json);

  @override
  List<String> parsedModels() {
    final fields = [id.toString(), name];

    return fields;
  }

}
