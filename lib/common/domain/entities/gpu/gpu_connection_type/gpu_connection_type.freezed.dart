// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gpu_connection_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GPUConnectionType _$GPUConnectionTypeFromJson(Map<String, dynamic> json) {
  return _GPUConnectionType.fromJson(json);
}

/// @nodoc
mixin _$GPUConnectionType {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GPUConnectionTypeCopyWith<GPUConnectionType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GPUConnectionTypeCopyWith<$Res> {
  factory $GPUConnectionTypeCopyWith(
          GPUConnectionType value, $Res Function(GPUConnectionType) then) =
      _$GPUConnectionTypeCopyWithImpl<$Res, GPUConnectionType>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$GPUConnectionTypeCopyWithImpl<$Res, $Val extends GPUConnectionType>
    implements $GPUConnectionTypeCopyWith<$Res> {
  _$GPUConnectionTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GPUConnectionTypeCopyWith<$Res>
    implements $GPUConnectionTypeCopyWith<$Res> {
  factory _$$_GPUConnectionTypeCopyWith(_$_GPUConnectionType value,
          $Res Function(_$_GPUConnectionType) then) =
      __$$_GPUConnectionTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$_GPUConnectionTypeCopyWithImpl<$Res>
    extends _$GPUConnectionTypeCopyWithImpl<$Res, _$_GPUConnectionType>
    implements _$$_GPUConnectionTypeCopyWith<$Res> {
  __$$_GPUConnectionTypeCopyWithImpl(
      _$_GPUConnectionType _value, $Res Function(_$_GPUConnectionType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_GPUConnectionType(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GPUConnectionType extends _GPUConnectionType {
  const _$_GPUConnectionType({required this.id, required this.name})
      : super._();

  factory _$_GPUConnectionType.fromJson(Map<String, dynamic> json) =>
      _$$_GPUConnectionTypeFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'GPUConnectionType(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GPUConnectionType &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GPUConnectionTypeCopyWith<_$_GPUConnectionType> get copyWith =>
      __$$_GPUConnectionTypeCopyWithImpl<_$_GPUConnectionType>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GPUConnectionTypeToJson(
      this,
    );
  }
}

abstract class _GPUConnectionType extends GPUConnectionType {
  const factory _GPUConnectionType(
      {required final int id,
      required final String name}) = _$_GPUConnectionType;
  const _GPUConnectionType._() : super._();

  factory _GPUConnectionType.fromJson(Map<String, dynamic> json) =
      _$_GPUConnectionType.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_GPUConnectionTypeCopyWith<_$_GPUConnectionType> get copyWith =>
      throw _privateConstructorUsedError;
}
