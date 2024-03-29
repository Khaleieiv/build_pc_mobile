// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ram_memory_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RamMemoryType _$RamMemoryTypeFromJson(Map<String, dynamic> json) {
  return _RamMemoryType.fromJson(json);
}

/// @nodoc
mixin _$RamMemoryType {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'memoryType')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RamMemoryTypeCopyWith<RamMemoryType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RamMemoryTypeCopyWith<$Res> {
  factory $RamMemoryTypeCopyWith(
          RamMemoryType value, $Res Function(RamMemoryType) then) =
      _$RamMemoryTypeCopyWithImpl<$Res, RamMemoryType>;
  @useResult
  $Res call({int id, @JsonKey(name: 'memoryType') String name});
}

/// @nodoc
class _$RamMemoryTypeCopyWithImpl<$Res, $Val extends RamMemoryType>
    implements $RamMemoryTypeCopyWith<$Res> {
  _$RamMemoryTypeCopyWithImpl(this._value, this._then);

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
abstract class _$$_RamMemoryTypeCopyWith<$Res>
    implements $RamMemoryTypeCopyWith<$Res> {
  factory _$$_RamMemoryTypeCopyWith(
          _$_RamMemoryType value, $Res Function(_$_RamMemoryType) then) =
      __$$_RamMemoryTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, @JsonKey(name: 'memoryType') String name});
}

/// @nodoc
class __$$_RamMemoryTypeCopyWithImpl<$Res>
    extends _$RamMemoryTypeCopyWithImpl<$Res, _$_RamMemoryType>
    implements _$$_RamMemoryTypeCopyWith<$Res> {
  __$$_RamMemoryTypeCopyWithImpl(
      _$_RamMemoryType _value, $Res Function(_$_RamMemoryType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_RamMemoryType(
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
class _$_RamMemoryType extends _RamMemoryType {
  const _$_RamMemoryType(
      {required this.id, @JsonKey(name: 'memoryType') required this.name})
      : super._();

  factory _$_RamMemoryType.fromJson(Map<String, dynamic> json) =>
      _$$_RamMemoryTypeFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'memoryType')
  final String name;

  @override
  String toString() {
    return 'RamMemoryType(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RamMemoryType &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RamMemoryTypeCopyWith<_$_RamMemoryType> get copyWith =>
      __$$_RamMemoryTypeCopyWithImpl<_$_RamMemoryType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RamMemoryTypeToJson(
      this,
    );
  }
}

abstract class _RamMemoryType extends RamMemoryType {
  const factory _RamMemoryType(
          {required final int id,
          @JsonKey(name: 'memoryType') required final String name}) =
      _$_RamMemoryType;
  const _RamMemoryType._() : super._();

  factory _RamMemoryType.fromJson(Map<String, dynamic> json) =
      _$_RamMemoryType.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'memoryType')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_RamMemoryTypeCopyWith<_$_RamMemoryType> get copyWith =>
      throw _privateConstructorUsedError;
}
