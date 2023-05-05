import 'package:freezed_annotation/freezed_annotation.dart';

part 'case_design_features.freezed.dart';

part 'case_design_features.g.dart';

@freezed
class CaseDesignFeatures  with _$CaseDesignFeatures {
  const factory CaseDesignFeatures ({
    required int id,
    required String designFeatures,
  }) = _CaseDesignFeatures;

  factory CaseDesignFeatures.fromJson(Map<String, dynamic> json) =>
      _$CaseDesignFeaturesFromJson(json);
}
