import 'package:build_pc_mobile/common/domain/entities/form_factor/form_factor.dart';
import 'package:build_pc_mobile/common/domain/entities/pc_case/case_design_features/case_design_features.dart';
import 'package:build_pc_mobile/common/domain/entities/pc_case/case_power_supply_location/case_power_supply_location.dart';
import 'package:build_pc_mobile/common/domain/entities/pc_case/case_producer/case_producer.dart';
import 'package:build_pc_mobile/common/domain/entities/pc_case/case_size/case_size.dart';
import 'package:build_pc_mobile/common/domain/entities/performance_level/performance_level.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pc_case.freezed.dart';

part 'pc_case.g.dart';

@freezed
class PcCase with _$PcCase {
  const factory PcCase({
    required int id,
    required String name,
    required CaseProducer caseProducer,
    required CaseSize caseSize,
    required List<FormFactor> formFactor,
    required CasePowerSupplyLocation casePowerSupplyLocation,
    required bool fansIncluded,
    required int usb_3_2,
    required int usb_3_0,
    required int usb_2_0,
    required List<CaseDesignFeatures> designFeatures,
    required int maxLengthOfGraphicCard,
    required int powerSupplyFormFactor,
    required String description,
    required int recommendedPrice,
    required PerformanceLevel performanceLevel,
  }) = _PcCase;

  factory PcCase.fromJson(Map<String, dynamic> json) => _$PcCaseFromJson(json);
}
