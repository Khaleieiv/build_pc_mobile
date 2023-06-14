import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'case_design_features.freezed.dart';

part 'case_design_features.g.dart';

@freezed
class CaseDesignFeatures  with _$CaseDesignFeatures implements BaseComponent {
  const factory CaseDesignFeatures ({
    required int id,
    @JsonKey(name: 'designFeatures') required String name,
  }) = _CaseDesignFeatures;

  const CaseDesignFeatures._();

  factory CaseDesignFeatures.fromJson(Map<String, dynamic> json) =>
      _$CaseDesignFeaturesFromJson(json);

  @override
  List<String> parsedModels() {
    final fields = [id.toString(), name];

    return fields;
  }
}
