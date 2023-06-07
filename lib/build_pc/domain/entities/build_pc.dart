import 'package:build_pc_mobile/auth/domain/entities/user/user.dart';
import 'package:build_pc_mobile/build_pc/domain/entities/rating/rating.dart';
import 'package:build_pc_mobile/common/domain/entities/cooler/cooler.dart';
import 'package:build_pc_mobile/common/domain/entities/cpu/cpu.dart';
import 'package:build_pc_mobile/common/domain/entities/gpu/gpu.dart';
import 'package:build_pc_mobile/common/domain/entities/motherboard/motherboard.dart';
import 'package:build_pc_mobile/common/domain/entities/pc_case/pc_case.dart';
import 'package:build_pc_mobile/common/domain/entities/power_supply/power_supply.dart';
import 'package:build_pc_mobile/common/domain/entities/ram/ram.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/hdd/hdd.dart';
import 'package:build_pc_mobile/common/domain/entities/storage_drive/ssd/ssd.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'build_pc.freezed.dart';

part 'build_pc.g.dart';

@freezed
class BuildPc with _$BuildPc {
  const factory BuildPc({
    required int? id,
    required String? nameOfBuild,
    required User? user,
    required Motherboard? motherboard,
    @JsonKey(name: 'processor')
    required CPU? cpu,
    @JsonKey(name: 'graphicCard')
    required GPU? gpu,
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

  factory BuildPc.fromJson(Map<String, dynamic> json) =>
      _$BuildPcFromJson(json);
}
