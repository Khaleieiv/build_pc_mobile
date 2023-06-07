// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ssd_cells_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SsdCellsType _$SsdCellsTypeFromJson(Map<String, dynamic> json) {
  return _SsdCellsType.fromJson(json);
}

/// @nodoc
mixin _$SsdCellsType {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SsdCellsTypeCopyWith<SsdCellsType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SsdCellsTypeCopyWith<$Res> {
  factory $SsdCellsTypeCopyWith(
          SsdCellsType value, $Res Function(SsdCellsType) then) =
      _$SsdCellsTypeCopyWithImpl<$Res, SsdCellsType>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$SsdCellsTypeCopyWithImpl<$Res, $Val extends SsdCellsType>
    implements $SsdCellsTypeCopyWith<$Res> {
  _$SsdCellsTypeCopyWithImpl(this._value, this._then);

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
abstract class _$$_SsdCellsTypeCopyWith<$Res>
    implements $SsdCellsTypeCopyWith<$Res> {
  factory _$$_SsdCellsTypeCopyWith(
          _$_SsdCellsType value, $Res Function(_$_SsdCellsType) then) =
      __$$_SsdCellsTypeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$_SsdCellsTypeCopyWithImpl<$Res>
    extends _$SsdCellsTypeCopyWithImpl<$Res, _$_SsdCellsType>
    implements _$$_SsdCellsTypeCopyWith<$Res> {
  __$$_SsdCellsTypeCopyWithImpl(
      _$_SsdCellsType _value, $Res Function(_$_SsdCellsType) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_SsdCellsType(
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
class _$_SsdCellsType extends _SsdCellsType {
  const _$_SsdCellsType({required this.id, required this.name}) : super._();

  factory _$_SsdCellsType.fromJson(Map<String, dynamic> json) =>
      _$$_SsdCellsTypeFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'SsdCellsType(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SsdCellsType &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SsdCellsTypeCopyWith<_$_SsdCellsType> get copyWith =>
      __$$_SsdCellsTypeCopyWithImpl<_$_SsdCellsType>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SsdCellsTypeToJson(
      this,
    );
  }
}

abstract class _SsdCellsType extends SsdCellsType {
  const factory _SsdCellsType(
      {required final int id, required final String name}) = _$_SsdCellsType;
  const _SsdCellsType._() : super._();

  factory _SsdCellsType.fromJson(Map<String, dynamic> json) =
      _$_SsdCellsType.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_SsdCellsTypeCopyWith<_$_SsdCellsType> get copyWith =>
      throw _privateConstructorUsedError;
}
