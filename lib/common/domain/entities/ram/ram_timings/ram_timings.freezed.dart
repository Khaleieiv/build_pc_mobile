// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ram_timings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RamTimings _$RamTimingsFromJson(Map<String, dynamic> json) {
  return _RamTimings.fromJson(json);
}

/// @nodoc
mixin _$RamTimings {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'timings')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RamTimingsCopyWith<RamTimings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RamTimingsCopyWith<$Res> {
  factory $RamTimingsCopyWith(
          RamTimings value, $Res Function(RamTimings) then) =
      _$RamTimingsCopyWithImpl<$Res, RamTimings>;
  @useResult
  $Res call({int id, @JsonKey(name: 'timings') String name});
}

/// @nodoc
class _$RamTimingsCopyWithImpl<$Res, $Val extends RamTimings>
    implements $RamTimingsCopyWith<$Res> {
  _$RamTimingsCopyWithImpl(this._value, this._then);

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
abstract class _$$_RamTimingsCopyWith<$Res>
    implements $RamTimingsCopyWith<$Res> {
  factory _$$_RamTimingsCopyWith(
          _$_RamTimings value, $Res Function(_$_RamTimings) then) =
      __$$_RamTimingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, @JsonKey(name: 'timings') String name});
}

/// @nodoc
class __$$_RamTimingsCopyWithImpl<$Res>
    extends _$RamTimingsCopyWithImpl<$Res, _$_RamTimings>
    implements _$$_RamTimingsCopyWith<$Res> {
  __$$_RamTimingsCopyWithImpl(
      _$_RamTimings _value, $Res Function(_$_RamTimings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_RamTimings(
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
class _$_RamTimings extends _RamTimings {
  const _$_RamTimings(
      {required this.id, @JsonKey(name: 'timings') required this.name})
      : super._();

  factory _$_RamTimings.fromJson(Map<String, dynamic> json) =>
      _$$_RamTimingsFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'timings')
  final String name;

  @override
  String toString() {
    return 'RamTimings(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RamTimings &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RamTimingsCopyWith<_$_RamTimings> get copyWith =>
      __$$_RamTimingsCopyWithImpl<_$_RamTimings>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RamTimingsToJson(
      this,
    );
  }
}

abstract class _RamTimings extends RamTimings {
  const factory _RamTimings(
      {required final int id,
      @JsonKey(name: 'timings') required final String name}) = _$_RamTimings;
  const _RamTimings._() : super._();

  factory _RamTimings.fromJson(Map<String, dynamic> json) =
      _$_RamTimings.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'timings')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_RamTimingsCopyWith<_$_RamTimings> get copyWith =>
      throw _privateConstructorUsedError;
}
