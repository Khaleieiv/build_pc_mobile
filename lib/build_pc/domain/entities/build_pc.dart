import 'package:build_pc_mobile/auth/domain/entities/user/user.dart';
import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:build_pc_mobile/common/domain/entities/cooler/cooler.dart';
import 'package:build_pc_mobile/common/domain/entities/cpu/cpu.dart';
import 'package:build_pc_mobile/common/domain/entities/gpu/gpu.dart';
import 'package:build_pc_mobile/common/domain/entities/motherboard/motherboard.dart';
import 'package:build_pc_mobile/common/domain/entities/pc_case/pc_case.dart';
import 'package:build_pc_mobile/common/domain/entities/power_supply/power_supply.dart';
import 'package:build_pc_mobile/common/domain/entities/ram/ram.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/hdd/hdd.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/ssd/ssd.dart';
import 'package:build_pc_mobile/rating/domain/entities/rating/rating.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'build_pc.freezed.dart';

part 'build_pc.g.dart';

@freezed
class BuildPc with _$BuildPc implements BaseComponent {
  const factory BuildPc({
    required int? id,
    @JsonKey(name: 'nameOfBuild') required String? name,
    required User? user,
    required Motherboard? motherboard,
    @JsonKey(name: 'processor') required CPU? cpu,
    @JsonKey(name: 'graphicCard') required GPU? gpu,
    required List<Ram>? ram,
    required PowerSupply? powerSupply,
    required List<Hdd>? hdd,
    required List<Ssd>? ssd,
    required PcCase? pcCase,
    required Cooler? cooler,
    required int countOfLikes,
    required Rating? ratingId,
    required int totalPrice,
  }) = _BuildPc;

  const BuildPc._();


  factory BuildPc.fromJson(Map<String, dynamic> json) =>
      _$BuildPcFromJson(json);

  @override
  List<Object?> parsedModels() {
    final ramField = [];
    final ssdField = [];
    final hddField = [];
    //ignore: avoid-non-null-assertion
    for (final r in ram!) {
      ramField.add(r.name);
    }
    //ignore: avoid-non-null-assertion
    for (final s in ssd!) {
      ssdField.add(s.name);
    }
    //ignore: avoid-non-null-assertion
    for (final h in hdd!) {
      hddField.add(h.name);
    }
    final List<String?> fields = [
      id.toString(),
      name,
      user?.name,
      motherboard?.name,
      cpu?.name,
      gpu?.name,
      ramField.toString(),
      powerSupply?.name,
      hddField.toString(),
      ssdField.toString(),
      pcCase?.name,
      cooler?.name,
      countOfLikes.toString(),
      totalPrice.toString(),
    ];

    return fields;
  }
}
