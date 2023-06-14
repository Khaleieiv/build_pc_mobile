import 'package:build_pc_mobile/common/domain/entities/base_component.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'case_size.freezed.dart';

part 'case_size.g.dart';

@freezed
class CaseSize with _$CaseSize implements BaseComponent {
  const factory CaseSize ({
    required int id,
    @JsonKey(name: 'size') required String name,
  }) = _CaseSize;

  const CaseSize._();

  factory CaseSize.fromJson(Map<String, dynamic> json) =>
      _$CaseSizeFromJson(json);

  @override
  List<String> parsedModels() {
    final fields = [id.toString(), name];

    return fields;
  }
}
