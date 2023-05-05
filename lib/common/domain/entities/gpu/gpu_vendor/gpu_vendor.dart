import 'package:freezed_annotation/freezed_annotation.dart';

part 'gpu_vendor.freezed.dart';

part 'gpu_vendor.g.dart';

@freezed
class GPUVendor with _$GPUVendor{
  const factory GPUVendor ({
    required int id,
    required String vendor,
  }) = _GPUVendor;

  factory GPUVendor.fromJson(Map<String, dynamic> json) =>
      _$GPUVendorFromJson(json);
}
