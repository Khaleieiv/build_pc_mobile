import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:build_pc_mobile/common/domain/entities/form_factor/form_factor.dart';
import 'package:build_pc_mobile/common/domain/entities/pc_case/case_design_features/case_design_features.dart';
import 'package:build_pc_mobile/common/domain/entities/pc_case/case_power_supply_location/case_power_supply_location.dart';
import 'package:build_pc_mobile/common/domain/entities/pc_case/case_size/case_size.dart';
import 'package:build_pc_mobile/common/domain/entities/performance_level/performance_level.dart';
import 'package:build_pc_mobile/common/domain/entities/producer/producers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pc_case.freezed.dart';
part 'pc_case.g.dart';

@freezed
class PcCase with _$PcCase implements BaseComponent {
  const factory PcCase({
    required int id,
    required String name,
    required Producers caseProducer,
    required CaseSize caseSize,
    required List<FormFactor> formFactor,
    required CasePowerSupplyLocation casePowerSupplyLocation,
    required bool fansIncluded,
    required int usb_3_2,
    required int usb_3_0,
    required int usb_2_0,
    required List<CaseDesignFeatures> designFeatures,
    required int maxLengthOfGraphicCard,
    required String description,
    required int recommendedPrice,
    required PerformanceLevel? performanceLevel,
  }) = _PcCase;

  const PcCase._();

  factory PcCase.fromJson(Map<String, dynamic> json) => _$PcCaseFromJson(json);

  @override
  List<String?> parsedModels() {
    final formFactorField = [];
    for(final form in formFactor){
      formFactorField.add(form.name);
    }
    final designFeaturesField = [];
    for(final feature in designFeatures){
      designFeaturesField.add(feature.name);
    }

    final List<String?> fields = [
      name,
      caseProducer.name,
      caseSize.name,
      formFactorField.toString(),
      casePowerSupplyLocation.name,
      fansIncluded.toString(),
      usb_3_2.toString(),
      usb_3_0.toString(),
      usb_2_0.toString(),
      designFeaturesField.toString(),
      maxLengthOfGraphicCard.toString(),
      recommendedPrice.toString(),
      performanceLevel?.name,
      description,
    ];

    return fields;
  }
}
