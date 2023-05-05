// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gpu_vendor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GPUVendor _$GPUVendorFromJson(Map<String, dynamic> json) {
  return _GPUVendor.fromJson(json);
}

/// @nodoc
mixin _$GPUVendor {
  int get id => throw _privateConstructorUsedError;
  String get vendor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GPUVendorCopyWith<GPUVendor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GPUVendorCopyWith<$Res> {
  factory $GPUVendorCopyWith(GPUVendor value, $Res Function(GPUVendor) then) =
      _$GPUVendorCopyWithImpl<$Res, GPUVendor>;
  @useResult
  $Res call({int id, String vendor});
}

/// @nodoc
class _$GPUVendorCopyWithImpl<$Res, $Val extends GPUVendor>
    implements $GPUVendorCopyWith<$Res> {
  _$GPUVendorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? vendor = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      vendor: null == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GPUVendorCopyWith<$Res> implements $GPUVendorCopyWith<$Res> {
  factory _$$_GPUVendorCopyWith(
          _$_GPUVendor value, $Res Function(_$_GPUVendor) then) =
      __$$_GPUVendorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String vendor});
}

/// @nodoc
class __$$_GPUVendorCopyWithImpl<$Res>
    extends _$GPUVendorCopyWithImpl<$Res, _$_GPUVendor>
    implements _$$_GPUVendorCopyWith<$Res> {
  __$$_GPUVendorCopyWithImpl(
      _$_GPUVendor _value, $Res Function(_$_GPUVendor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? vendor = null,
  }) {
    return _then(_$_GPUVendor(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      vendor: null == vendor
          ? _value.vendor
          : vendor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GPUVendor implements _GPUVendor {
  const _$_GPUVendor({required this.id, required this.vendor});

  factory _$_GPUVendor.fromJson(Map<String, dynamic> json) =>
      _$$_GPUVendorFromJson(json);

  @override
  final int id;
  @override
  final String vendor;

  @override
  String toString() {
    return 'GPUVendor(id: $id, vendor: $vendor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GPUVendor &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.vendor, vendor) || other.vendor == vendor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, vendor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GPUVendorCopyWith<_$_GPUVendor> get copyWith =>
      __$$_GPUVendorCopyWithImpl<_$_GPUVendor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GPUVendorToJson(
      this,
    );
  }
}

abstract class _GPUVendor implements GPUVendor {
  const factory _GPUVendor(
      {required final int id, required final String vendor}) = _$_GPUVendor;

  factory _GPUVendor.fromJson(Map<String, dynamic> json) =
      _$_GPUVendor.fromJson;

  @override
  int get id;
  @override
  String get vendor;
  @override
  @JsonKey(ignore: true)
  _$$_GPUVendorCopyWith<_$_GPUVendor> get copyWith =>
      throw _privateConstructorUsedError;
}
