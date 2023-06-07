import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cpu_pcie_version.freezed.dart';

part 'cpu_pcie_version.g.dart';

@freezed
class CPUPcieVersion with _$CPUPcieVersion implements BaseComponent {
  const factory CPUPcieVersion ({
    required int id,
    required String name,
  }) = _CPUPcieVersion;

  const CPUPcieVersion._();

  factory CPUPcieVersion.fromJson(Map<String, dynamic> json) =>
      _$CPUPcieVersionFromJson(json);

  @override
  List<String> parsedModels() {
    final fields = [id.toString(), name];

    return fields;
  }
}
