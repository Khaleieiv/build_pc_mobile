// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cpu_pcie_version.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CPUPcieVersion _$CPUPcieVersionFromJson(Map<String, dynamic> json) {
  return _CPUPcieVersion.fromJson(json);
}

/// @nodoc
mixin _$CPUPcieVersion {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CPUPcieVersionCopyWith<CPUPcieVersion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CPUPcieVersionCopyWith<$Res> {
  factory $CPUPcieVersionCopyWith(
          CPUPcieVersion value, $Res Function(CPUPcieVersion) then) =
      _$CPUPcieVersionCopyWithImpl<$Res, CPUPcieVersion>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$CPUPcieVersionCopyWithImpl<$Res, $Val extends CPUPcieVersion>
    implements $CPUPcieVersionCopyWith<$Res> {
  _$CPUPcieVersionCopyWithImpl(this._value, this._then);

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
abstract class _$$_CPUPcieVersionCopyWith<$Res>
    implements $CPUPcieVersionCopyWith<$Res> {
  factory _$$_CPUPcieVersionCopyWith(
          _$_CPUPcieVersion value, $Res Function(_$_CPUPcieVersion) then) =
      __$$_CPUPcieVersionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$_CPUPcieVersionCopyWithImpl<$Res>
    extends _$CPUPcieVersionCopyWithImpl<$Res, _$_CPUPcieVersion>
    implements _$$_CPUPcieVersionCopyWith<$Res> {
  __$$_CPUPcieVersionCopyWithImpl(
      _$_CPUPcieVersion _value, $Res Function(_$_CPUPcieVersion) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_CPUPcieVersion(
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
class _$_CPUPcieVersion implements _CPUPcieVersion {
  const _$_CPUPcieVersion({required this.id, required this.name});

  factory _$_CPUPcieVersion.fromJson(Map<String, dynamic> json) =>
      _$$_CPUPcieVersionFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'CPUPcieVersion(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CPUPcieVersion &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CPUPcieVersionCopyWith<_$_CPUPcieVersion> get copyWith =>
      __$$_CPUPcieVersionCopyWithImpl<_$_CPUPcieVersion>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CPUPcieVersionToJson(
      this,
    );
  }
}

abstract class _CPUPcieVersion implements CPUPcieVersion {
  const factory _CPUPcieVersion(
      {required final int id, required final String name}) = _$_CPUPcieVersion;

  factory _CPUPcieVersion.fromJson(Map<String, dynamic> json) =
      _$_CPUPcieVersion.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CPUPcieVersionCopyWith<_$_CPUPcieVersion> get copyWith =>
      throw _privateConstructorUsedError;
}
