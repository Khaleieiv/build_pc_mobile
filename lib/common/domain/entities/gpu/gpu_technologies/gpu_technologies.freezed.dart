// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gpu_technologies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GPUTechnologies _$GPUTechnologiesFromJson(Map<String, dynamic> json) {
  return _GPUTechnologies.fromJson(json);
}

/// @nodoc
mixin _$GPUTechnologies {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GPUTechnologiesCopyWith<GPUTechnologies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GPUTechnologiesCopyWith<$Res> {
  factory $GPUTechnologiesCopyWith(
          GPUTechnologies value, $Res Function(GPUTechnologies) then) =
      _$GPUTechnologiesCopyWithImpl<$Res, GPUTechnologies>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$GPUTechnologiesCopyWithImpl<$Res, $Val extends GPUTechnologies>
    implements $GPUTechnologiesCopyWith<$Res> {
  _$GPUTechnologiesCopyWithImpl(this._value, this._then);

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
abstract class _$$_GPUTechnologiesCopyWith<$Res>
    implements $GPUTechnologiesCopyWith<$Res> {
  factory _$$_GPUTechnologiesCopyWith(
          _$_GPUTechnologies value, $Res Function(_$_GPUTechnologies) then) =
      __$$_GPUTechnologiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$_GPUTechnologiesCopyWithImpl<$Res>
    extends _$GPUTechnologiesCopyWithImpl<$Res, _$_GPUTechnologies>
    implements _$$_GPUTechnologiesCopyWith<$Res> {
  __$$_GPUTechnologiesCopyWithImpl(
      _$_GPUTechnologies _value, $Res Function(_$_GPUTechnologies) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_GPUTechnologies(
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
class _$_GPUTechnologies extends _GPUTechnologies {
  const _$_GPUTechnologies({required this.id, required this.name}) : super._();

  factory _$_GPUTechnologies.fromJson(Map<String, dynamic> json) =>
      _$$_GPUTechnologiesFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'GPUTechnologies(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GPUTechnologies &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GPUTechnologiesCopyWith<_$_GPUTechnologies> get copyWith =>
      __$$_GPUTechnologiesCopyWithImpl<_$_GPUTechnologies>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GPUTechnologiesToJson(
      this,
    );
  }
}

abstract class _GPUTechnologies extends GPUTechnologies {
  const factory _GPUTechnologies(
      {required final int id, required final String name}) = _$_GPUTechnologies;
  const _GPUTechnologies._() : super._();

  factory _GPUTechnologies.fromJson(Map<String, dynamic> json) =
      _$_GPUTechnologies.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_GPUTechnologiesCopyWith<_$_GPUTechnologies> get copyWith =>
      throw _privateConstructorUsedError;
}
