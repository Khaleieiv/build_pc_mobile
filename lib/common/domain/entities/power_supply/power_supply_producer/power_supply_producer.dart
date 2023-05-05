import 'package:freezed_annotation/freezed_annotation.dart';

part 'power_supply_producer.freezed.dart';

part 'power_supply_producer.g.dart';

@freezed
class PowerSupplyProducer with _$PowerSupplyProducer {
  const factory PowerSupplyProducer ({
    required int id,
    required String producer,
  }) = _PowerSupplyProducer;

  factory PowerSupplyProducer.fromJson(Map<String, dynamic> json) =>
      _$PowerSupplyProducerFromJson(json);
}
