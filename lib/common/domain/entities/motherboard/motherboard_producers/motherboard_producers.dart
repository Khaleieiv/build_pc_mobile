import 'package:freezed_annotation/freezed_annotation.dart';

part 'motherboard_producers.freezed.dart';

part 'motherboard_producers.g.dart';

@freezed
class MotherboardProducers with _$MotherboardProducers {
  const factory MotherboardProducers ({
    required int id,
    required String producer,
  }) = _MotherboardProducers;

  factory MotherboardProducers.fromJson(Map<String, dynamic> json) =>
      _$MotherboardProducersFromJson(json);
}
