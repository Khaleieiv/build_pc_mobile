// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cpu_generation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CPUGeneration _$CPUGenerationFromJson(Map<String, dynamic> json) {
  return _CPUGeneration.fromJson(json);
}

/// @nodoc
mixin _$CPUGeneration {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CPUGenerationCopyWith<CPUGeneration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CPUGenerationCopyWith<$Res> {
  factory $CPUGenerationCopyWith(
          CPUGeneration value, $Res Function(CPUGeneration) then) =
      _$CPUGenerationCopyWithImpl<$Res, CPUGeneration>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$CPUGenerationCopyWithImpl<$Res, $Val extends CPUGeneration>
    implements $CPUGenerationCopyWith<$Res> {
  _$CPUGenerationCopyWithImpl(this._value, this._then);

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
abstract class _$$_CPUGenerationCopyWith<$Res>
    implements $CPUGenerationCopyWith<$Res> {
  factory _$$_CPUGenerationCopyWith(
          _$_CPUGeneration value, $Res Function(_$_CPUGeneration) then) =
      __$$_CPUGenerationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$_CPUGenerationCopyWithImpl<$Res>
    extends _$CPUGenerationCopyWithImpl<$Res, _$_CPUGeneration>
    implements _$$_CPUGenerationCopyWith<$Res> {
  __$$_CPUGenerationCopyWithImpl(
      _$_CPUGeneration _value, $Res Function(_$_CPUGeneration) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_CPUGeneration(
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
class _$_CPUGeneration extends _CPUGeneration {
  const _$_CPUGeneration({required this.id, required this.name}) : super._();

  factory _$_CPUGeneration.fromJson(Map<String, dynamic> json) =>
      _$$_CPUGenerationFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'CPUGeneration(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CPUGeneration &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CPUGenerationCopyWith<_$_CPUGeneration> get copyWith =>
      __$$_CPUGenerationCopyWithImpl<_$_CPUGeneration>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CPUGenerationToJson(
      this,
    );
  }
}

abstract class _CPUGeneration extends CPUGeneration {
  const factory _CPUGeneration(
      {required final int id, required final String name}) = _$_CPUGeneration;
  const _CPUGeneration._() : super._();

  factory _CPUGeneration.fromJson(Map<String, dynamic> json) =
      _$_CPUGeneration.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CPUGenerationCopyWith<_$_CPUGeneration> get copyWith =>
      throw _privateConstructorUsedError;
}
