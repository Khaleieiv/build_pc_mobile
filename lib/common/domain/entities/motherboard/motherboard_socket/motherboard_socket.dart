import 'package:freezed_annotation/freezed_annotation.dart';

part 'motherboard_socket.freezed.dart';

part 'motherboard_socket.g.dart';

@freezed
class MotherboardSocket with _$MotherboardSocket {
  const factory MotherboardSocket ({
    required int id,
    required String socket,
  }) = _MotherboardSocket;

  factory MotherboardSocket.fromJson(Map<String, dynamic> json) =>
      _$MotherboardSocketFromJson(json);
}
