// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cpu_tech.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CPUTech _$CPUTechFromJson(Map<String, dynamic> json) {
  return _CPUTech.fromJson(json);
}

/// @nodoc
mixin _$CPUTech {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CPUTechCopyWith<CPUTech> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CPUTechCopyWith<$Res> {
  factory $CPUTechCopyWith(CPUTech value, $Res Function(CPUTech) then) =
      _$CPUTechCopyWithImpl<$Res, CPUTech>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$CPUTechCopyWithImpl<$Res, $Val extends CPUTech>
    implements $CPUTechCopyWith<$Res> {
  _$CPUTechCopyWithImpl(this._value, this._then);

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
abstract class _$$_CPUTechCopyWith<$Res> implements $CPUTechCopyWith<$Res> {
  factory _$$_CPUTechCopyWith(
          _$_CPUTech value, $Res Function(_$_CPUTech) then) =
      __$$_CPUTechCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$_CPUTechCopyWithImpl<$Res>
    extends _$CPUTechCopyWithImpl<$Res, _$_CPUTech>
    implements _$$_CPUTechCopyWith<$Res> {
  __$$_CPUTechCopyWithImpl(_$_CPUTech _value, $Res Function(_$_CPUTech) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_CPUTech(
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
class _$_CPUTech extends _CPUTech {
  const _$_CPUTech({required this.id, required this.name}) : super._();

  factory _$_CPUTech.fromJson(Map<String, dynamic> json) =>
      _$$_CPUTechFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'CPUTech(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CPUTech &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CPUTechCopyWith<_$_CPUTech> get copyWith =>
      __$$_CPUTechCopyWithImpl<_$_CPUTech>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CPUTechToJson(
      this,
    );
  }
}

abstract class _CPUTech extends CPUTech {
  const factory _CPUTech({required final int id, required final String name}) =
      _$_CPUTech;
  const _CPUTech._() : super._();

  factory _CPUTech.fromJson(Map<String, dynamic> json) = _$_CPUTech.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CPUTechCopyWith<_$_CPUTech> get copyWith =>
      throw _privateConstructorUsedError;
}
