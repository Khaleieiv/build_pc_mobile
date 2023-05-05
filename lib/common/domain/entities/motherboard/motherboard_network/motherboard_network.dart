import 'package:freezed_annotation/freezed_annotation.dart';

part 'motherboard_network.freezed.dart';

part 'motherboard_network.g.dart';

@freezed
class MotherboardNetwork with _$MotherboardNetwork {
  const factory MotherboardNetwork ({
    required int id,
    required String network,
  }) = _MotherboardNetwork;

  factory MotherboardNetwork.fromJson(Map<String, dynamic> json) =>
      _$MotherboardNetworkFromJson(json);
}
