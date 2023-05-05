import 'package:freezed_annotation/freezed_annotation.dart';

part 'cpu_pcie_version.freezed.dart';

part 'cpu_pcie_version.g.dart';

@freezed
class CPUPcieVersion with _$CPUPcieVersion {
  const factory CPUPcieVersion ({
    required int id,
    required String name,
  }) = _CPUPcieVersion;

  factory CPUPcieVersion.fromJson(Map<String, dynamic> json) =>
      _$CPUPcieVersionFromJson(json);
}
