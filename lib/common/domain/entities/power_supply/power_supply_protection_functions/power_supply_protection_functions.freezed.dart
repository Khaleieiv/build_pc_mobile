// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'power_supply_protection_functions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PowerSupplyProtectionFunctions _$PowerSupplyProtectionFunctionsFromJson(
    Map<String, dynamic> json) {
  return _PowerSupplyProtectionFunctions.fromJson(json);
}

/// @nodoc
mixin _$PowerSupplyProtectionFunctions {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PowerSupplyProtectionFunctionsCopyWith<PowerSupplyProtectionFunctions>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PowerSupplyProtectionFunctionsCopyWith<$Res> {
  factory $PowerSupplyProtectionFunctionsCopyWith(
          PowerSupplyProtectionFunctions value,
          $Res Function(PowerSupplyProtectionFunctions) then) =
      _$PowerSupplyProtectionFunctionsCopyWithImpl<$Res,
          PowerSupplyProtectionFunctions>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$PowerSupplyProtectionFunctionsCopyWithImpl<$Res,
        $Val extends PowerSupplyProtectionFunctions>
    implements $PowerSupplyProtectionFunctionsCopyWith<$Res> {
  _$PowerSupplyProtectionFunctionsCopyWithImpl(this._value, this._then);

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
abstract class _$$_PowerSupplyProtectionFunctionsCopyWith<$Res>
    implements $PowerSupplyProtectionFunctionsCopyWith<$Res> {
  factory _$$_PowerSupplyProtectionFunctionsCopyWith(
          _$_PowerSupplyProtectionFunctions value,
          $Res Function(_$_PowerSupplyProtectionFunctions) then) =
      __$$_PowerSupplyProtectionFunctionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$_PowerSupplyProtectionFunctionsCopyWithImpl<$Res>
    extends _$PowerSupplyProtectionFunctionsCopyWithImpl<$Res,
        _$_PowerSupplyProtectionFunctions>
    implements _$$_PowerSupplyProtectionFunctionsCopyWith<$Res> {
  __$$_PowerSupplyProtectionFunctionsCopyWithImpl(
      _$_PowerSupplyProtectionFunctions _value,
      $Res Function(_$_PowerSupplyProtectionFunctions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_PowerSupplyProtectionFunctions(
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
class _$_PowerSupplyProtectionFunctions
    implements _PowerSupplyProtectionFunctions {
  const _$_PowerSupplyProtectionFunctions(
      {required this.id, required this.name});

  factory _$_PowerSupplyProtectionFunctions.fromJson(
          Map<String, dynamic> json) =>
      _$$_PowerSupplyProtectionFunctionsFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'PowerSupplyProtectionFunctions(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PowerSupplyProtectionFunctions &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PowerSupplyProtectionFunctionsCopyWith<_$_PowerSupplyProtectionFunctions>
      get copyWith => __$$_PowerSupplyProtectionFunctionsCopyWithImpl<
          _$_PowerSupplyProtectionFunctions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PowerSupplyProtectionFunctionsToJson(
      this,
    );
  }
}

abstract class _PowerSupplyProtectionFunctions
    implements PowerSupplyProtectionFunctions {
  const factory _PowerSupplyProtectionFunctions(
      {required final int id,
      required final String name}) = _$_PowerSupplyProtectionFunctions;

  factory _PowerSupplyProtectionFunctions.fromJson(Map<String, dynamic> json) =
      _$_PowerSupplyProtectionFunctions.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_PowerSupplyProtectionFunctionsCopyWith<_$_PowerSupplyProtectionFunctions>
      get copyWith => throw _privateConstructorUsedError;
}
