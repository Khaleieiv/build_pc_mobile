// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'performance_level.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PerformanceLevel _$PerformanceLevelFromJson(Map<String, dynamic> json) {
  return _PerformanceLevel.fromJson(json);
}

/// @nodoc
mixin _$PerformanceLevel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'level')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PerformanceLevelCopyWith<PerformanceLevel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PerformanceLevelCopyWith<$Res> {
  factory $PerformanceLevelCopyWith(
          PerformanceLevel value, $Res Function(PerformanceLevel) then) =
      _$PerformanceLevelCopyWithImpl<$Res, PerformanceLevel>;
  @useResult
  $Res call({int id, @JsonKey(name: 'level') String? name});
}

/// @nodoc
class _$PerformanceLevelCopyWithImpl<$Res, $Val extends PerformanceLevel>
    implements $PerformanceLevelCopyWith<$Res> {
  _$PerformanceLevelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PerformanceLevelCopyWith<$Res>
    implements $PerformanceLevelCopyWith<$Res> {
  factory _$$_PerformanceLevelCopyWith(
          _$_PerformanceLevel value, $Res Function(_$_PerformanceLevel) then) =
      __$$_PerformanceLevelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, @JsonKey(name: 'level') String? name});
}

/// @nodoc
class __$$_PerformanceLevelCopyWithImpl<$Res>
    extends _$PerformanceLevelCopyWithImpl<$Res, _$_PerformanceLevel>
    implements _$$_PerformanceLevelCopyWith<$Res> {
  __$$_PerformanceLevelCopyWithImpl(
      _$_PerformanceLevel _value, $Res Function(_$_PerformanceLevel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
  }) {
    return _then(_$_PerformanceLevel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PerformanceLevel extends _PerformanceLevel {
  const _$_PerformanceLevel(
      {required this.id, @JsonKey(name: 'level') required this.name})
      : super._();

  factory _$_PerformanceLevel.fromJson(Map<String, dynamic> json) =>
      _$$_PerformanceLevelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'level')
  final String? name;

  @override
  String toString() {
    return 'PerformanceLevel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PerformanceLevel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PerformanceLevelCopyWith<_$_PerformanceLevel> get copyWith =>
      __$$_PerformanceLevelCopyWithImpl<_$_PerformanceLevel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PerformanceLevelToJson(
      this,
    );
  }
}

abstract class _PerformanceLevel extends PerformanceLevel {
  const factory _PerformanceLevel(
          {required final int id,
          @JsonKey(name: 'level') required final String? name}) =
      _$_PerformanceLevel;
  const _PerformanceLevel._() : super._();

  factory _PerformanceLevel.fromJson(Map<String, dynamic> json) =
      _$_PerformanceLevel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'level')
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$_PerformanceLevelCopyWith<_$_PerformanceLevel> get copyWith =>
      throw _privateConstructorUsedError;
}
