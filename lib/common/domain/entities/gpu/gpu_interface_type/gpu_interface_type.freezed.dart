// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gpu_interface_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GPUInterfaceType _$GPUInterfaceTypeFromJson(Map<String, dynamic> json) {
  return _GPUInterfaceType.fromJson(json);
}

/// @nodoc
mixin _$GPUInterfaceType {
  int get id => throw _privateConstructorUsedError;
  String get interfaceType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GPUInterfaceTypeCopyWith<GPUInterfaceType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GPUInterfaceTypeCopyWith<$Res> {
  factory $GPUInterfaceTypeCopyWith(
          GPUInterfaceType value, $Res Function(GPUInterfaceType) then) =
      _$GPUInterfaceTypeCopyWithImpl<$Res, GPUInterfaceType>;
  @useResult
  $Res call({int id, String interfaceType});
}

/// @nodoc
class _$GPUInterfaceTypeCopyWithImpl<$Res, $Val extends GPUInterfaceType>
    implements $GPUInterfaceTypeCopyWith<$Res> {
  _$GPUInterfaceTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? interfaceType = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      interfaceType: null == interfaceType
          ? _value.interfaceType
          : interfaceType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GPUInterfaceTypeCopyWith<$Res>
    implements $GPUInterfaceTypeCopyWith<$Res> {
  factory _$$_GPUInterfaceTypeCopyWith(
          _$_GPUInterfaceType value, $Res Function(_$_GPUInterfaceType) then) =
      __$$_GPUInterfaceTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String interfaceType});
}

/// @nodoc
class __$$_GPUInterfaceTypeCopyWithImpl<$Res>
    extends _$GPUInterfaceTypeCopyWithImpl<$Res, _$_GPUInterfaceType>
    implements _$$_GPUInterfaceTypeCopyWith<$Res> {
  __$$_GPUInterfaceTypeCopyWithImpl(
      _$_GPUInterfaceType _value, $Res Function(_$_GPUInterfaceType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? interfaceType = null,
  }) {
    return _then(_$_GPUInterfaceType(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      interfaceType: null == interfaceType
          ? _value.interfaceType
          : interfaceType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GPUInterfaceType implements _GPUInterfaceType {
  const _$_GPUInterfaceType({required this.id, required this.interfaceType});

  factory _$_GPUInterfaceType.fromJson(Map<String, dynamic> json) =>
      _$$_GPUInterfaceTypeFromJson(json);

  @override
  final int id;
  @override
  final String interfaceType;

  @override
  String toString() {
    return 'GPUInterfaceType(id: $id, interfaceType: $interfaceType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GPUInterfaceType &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.interfaceType, interfaceType) ||
                other.interfaceType == interfaceType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, interfaceType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GPUInterfaceTypeCopyWith<_$_GPUInterfaceType> get copyWith =>
      __$$_GPUInterfaceTypeCopyWithImpl<_$_GPUInterfaceType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GPUInterfaceTypeToJson(
      this,
    );
  }
}

abstract class _GPUInterfaceType implements GPUInterfaceType {
  const factory _GPUInterfaceType(
      {required final int id,
      required final String interfaceType}) = _$_GPUInterfaceType;

  factory _GPUInterfaceType.fromJson(Map<String, dynamic> json) =
      _$_GPUInterfaceType.fromJson;

  @override
  int get id;
  @override
  String get interfaceType;
  @override
  @JsonKey(ignore: true)
  _$$_GPUInterfaceTypeCopyWith<_$_GPUInterfaceType> get copyWith =>
      throw _privateConstructorUsedError;
}
