import 'package:freezed_annotation/freezed_annotation.dart';

part 'cooler_socket.freezed.dart';

part 'cooler_socket.g.dart';

@freezed
class CoolerSocket with _$CoolerSocket {
  const factory CoolerSocket({
    required int id,
    required String socket,
  }) = _CoolerSocket;

  factory CoolerSocket.fromJson(Map<String, dynamic> json) =>
      _$CoolerSocketFromJson(json);
}
