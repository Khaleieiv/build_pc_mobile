// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'form_factor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FormFactor _$FormFactorFromJson(Map<String, dynamic> json) {
  return _FormFactor.fromJson(json);
}

/// @nodoc
mixin _$FormFactor {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormFactorCopyWith<FormFactor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormFactorCopyWith<$Res> {
  factory $FormFactorCopyWith(
          FormFactor value, $Res Function(FormFactor) then) =
      _$FormFactorCopyWithImpl<$Res, FormFactor>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$FormFactorCopyWithImpl<$Res, $Val extends FormFactor>
    implements $FormFactorCopyWith<$Res> {
  _$FormFactorCopyWithImpl(this._value, this._then);

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
abstract class _$$_FormFactorCopyWith<$Res>
    implements $FormFactorCopyWith<$Res> {
  factory _$$_FormFactorCopyWith(
          _$_FormFactor value, $Res Function(_$_FormFactor) then) =
      __$$_FormFactorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$_FormFactorCopyWithImpl<$Res>
    extends _$FormFactorCopyWithImpl<$Res, _$_FormFactor>
    implements _$$_FormFactorCopyWith<$Res> {
  __$$_FormFactorCopyWithImpl(
      _$_FormFactor _value, $Res Function(_$_FormFactor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_FormFactor(
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
class _$_FormFactor extends _FormFactor {
  const _$_FormFactor({required this.id, required this.name}) : super._();

  factory _$_FormFactor.fromJson(Map<String, dynamic> json) =>
      _$$_FormFactorFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'FormFactor(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FormFactor &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FormFactorCopyWith<_$_FormFactor> get copyWith =>
      __$$_FormFactorCopyWithImpl<_$_FormFactor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FormFactorToJson(
      this,
    );
  }
}

abstract class _FormFactor extends FormFactor {
  const factory _FormFactor(
      {required final int id, required final String name}) = _$_FormFactor;
  const _FormFactor._() : super._();

  factory _FormFactor.fromJson(Map<String, dynamic> json) =
      _$_FormFactor.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_FormFactorCopyWith<_$_FormFactor> get copyWith =>
      throw _privateConstructorUsedError;
}
