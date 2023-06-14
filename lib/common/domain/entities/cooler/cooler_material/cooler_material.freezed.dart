// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cooler_material.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoolerMaterial _$CoolerMaterialFromJson(Map<String, dynamic> json) {
  return _CoolerMaterial.fromJson(json);
}

/// @nodoc
mixin _$CoolerMaterial {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'material')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoolerMaterialCopyWith<CoolerMaterial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoolerMaterialCopyWith<$Res> {
  factory $CoolerMaterialCopyWith(
          CoolerMaterial value, $Res Function(CoolerMaterial) then) =
      _$CoolerMaterialCopyWithImpl<$Res, CoolerMaterial>;
  @useResult
  $Res call({int id, @JsonKey(name: 'material') String name});
}

/// @nodoc
class _$CoolerMaterialCopyWithImpl<$Res, $Val extends CoolerMaterial>
    implements $CoolerMaterialCopyWith<$Res> {
  _$CoolerMaterialCopyWithImpl(this._value, this._then);

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
abstract class _$$_CoolerMaterialCopyWith<$Res>
    implements $CoolerMaterialCopyWith<$Res> {
  factory _$$_CoolerMaterialCopyWith(
          _$_CoolerMaterial value, $Res Function(_$_CoolerMaterial) then) =
      __$$_CoolerMaterialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, @JsonKey(name: 'material') String name});
}

/// @nodoc
class __$$_CoolerMaterialCopyWithImpl<$Res>
    extends _$CoolerMaterialCopyWithImpl<$Res, _$_CoolerMaterial>
    implements _$$_CoolerMaterialCopyWith<$Res> {
  __$$_CoolerMaterialCopyWithImpl(
      _$_CoolerMaterial _value, $Res Function(_$_CoolerMaterial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_CoolerMaterial(
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
class _$_CoolerMaterial extends _CoolerMaterial {
  const _$_CoolerMaterial(
      {required this.id, @JsonKey(name: 'material') required this.name})
      : super._();

  factory _$_CoolerMaterial.fromJson(Map<String, dynamic> json) =>
      _$$_CoolerMaterialFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'material')
  final String name;

  @override
  String toString() {
    return 'CoolerMaterial(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoolerMaterial &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoolerMaterialCopyWith<_$_CoolerMaterial> get copyWith =>
      __$$_CoolerMaterialCopyWithImpl<_$_CoolerMaterial>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoolerMaterialToJson(
      this,
    );
  }
}

abstract class _CoolerMaterial extends CoolerMaterial {
  const factory _CoolerMaterial(
          {required final int id,
          @JsonKey(name: 'material') required final String name}) =
      _$_CoolerMaterial;
  const _CoolerMaterial._() : super._();

  factory _CoolerMaterial.fromJson(Map<String, dynamic> json) =
      _$_CoolerMaterial.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'material')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CoolerMaterialCopyWith<_$_CoolerMaterial> get copyWith =>
      throw _privateConstructorUsedError;
}
