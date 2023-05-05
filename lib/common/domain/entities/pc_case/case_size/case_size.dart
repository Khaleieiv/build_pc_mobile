import 'package:freezed_annotation/freezed_annotation.dart';

part 'case_size.freezed.dart';

part 'case_size.g.dart';

@freezed
class CaseSize with _$CaseSize {
  const factory CaseSize ({
    required int id,
    required String powerSupplyLocation,
  }) = _CaseSize;

  factory CaseSize.fromJson(Map<String, dynamic> json) =>
      _$CaseSizeFromJson(json);
}
