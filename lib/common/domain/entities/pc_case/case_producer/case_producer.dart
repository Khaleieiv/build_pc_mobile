import 'package:freezed_annotation/freezed_annotation.dart';

part 'case_producer.freezed.dart';

part 'case_producer.g.dart';

@freezed
class CaseProducer with _$CaseProducer {
  const factory CaseProducer({
    required int id,
    required String powerSupplyLocation,
  }) = _CaseProducer;

  factory CaseProducer.fromJson(Map<String, dynamic> json) =>
      _$CaseProducerFromJson(json);
}
