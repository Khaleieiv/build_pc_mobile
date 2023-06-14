// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gpu_memory_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GPUMemoryType _$GPUMemoryTypeFromJson(Map<String, dynamic> json) {
  return _GPUMemoryType.fromJson(json);
}

/// @nodoc
mixin _$GPUMemoryType {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GPUMemoryTypeCopyWith<GPUMemoryType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GPUMemoryTypeCopyWith<$Res> {
  factory $GPUMemoryTypeCopyWith(
          GPUMemoryType value, $Res Function(GPUMemoryType) then) =
      _$GPUMemoryTypeCopyWithImpl<$Res, GPUMemoryType>;
  @useResult
  $Res call({int id, @JsonKey(name: 'type') String name});
}

/// @nodoc
class _$GPUMemoryTypeCopyWithImpl<$Res, $Val extends GPUMemoryType>
    implements $GPUMemoryTypeCopyWith<$Res> {
  _$GPUMemoryTypeCopyWithImpl(this._value, this._then);

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
abstract class _$$_GPUMemoryTypeCopyWith<$Res>
    implements $GPUMemoryTypeCopyWith<$Res> {
  factory _$$_GPUMemoryTypeCopyWith(
          _$_GPUMemoryType value, $Res Function(_$_GPUMemoryType) then) =
      __$$_GPUMemoryTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, @JsonKey(name: 'type') String name});
}

/// @nodoc
class __$$_GPUMemoryTypeCopyWithImpl<$Res>
    extends _$GPUMemoryTypeCopyWithImpl<$Res, _$_GPUMemoryType>
    implements _$$_GPUMemoryTypeCopyWith<$Res> {
  __$$_GPUMemoryTypeCopyWithImpl(
      _$_GPUMemoryType _value, $Res Function(_$_GPUMemoryType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_GPUMemoryType(
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
class _$_GPUMemoryType extends _GPUMemoryType {
  const _$_GPUMemoryType(
      {required this.id, @JsonKey(name: 'type') required this.name})
      : super._();

  factory _$_GPUMemoryType.fromJson(Map<String, dynamic> json) =>
      _$$_GPUMemoryTypeFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'type')
  final String name;

  @override
  String toString() {
    return 'GPUMemoryType(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GPUMemoryType &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GPUMemoryTypeCopyWith<_$_GPUMemoryType> get copyWith =>
      __$$_GPUMemoryTypeCopyWithImpl<_$_GPUMemoryType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GPUMemoryTypeToJson(
      this,
    );
  }
}

abstract class _GPUMemoryType extends GPUMemoryType {
  const factory _GPUMemoryType(
      {required final int id,
      @JsonKey(name: 'type') required final String name}) = _$_GPUMemoryType;
  const _GPUMemoryType._() : super._();

  factory _GPUMemoryType.fromJson(Map<String, dynamic> json) =
      _$_GPUMemoryType.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'type')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_GPUMemoryTypeCopyWith<_$_GPUMemoryType> get copyWith =>
      throw _privateConstructorUsedError;
}
