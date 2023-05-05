// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'storage_form_factor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StorageFormFactor _$StorageFormFactorFromJson(Map<String, dynamic> json) {
  return _StorageFormFactor.fromJson(json);
}

/// @nodoc
mixin _$StorageFormFactor {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StorageFormFactorCopyWith<StorageFormFactor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageFormFactorCopyWith<$Res> {
  factory $StorageFormFactorCopyWith(
          StorageFormFactor value, $Res Function(StorageFormFactor) then) =
      _$StorageFormFactorCopyWithImpl<$Res, StorageFormFactor>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$StorageFormFactorCopyWithImpl<$Res, $Val extends StorageFormFactor>
    implements $StorageFormFactorCopyWith<$Res> {
  _$StorageFormFactorCopyWithImpl(this._value, this._then);

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
abstract class _$$_StorageFormFactorCopyWith<$Res>
    implements $StorageFormFactorCopyWith<$Res> {
  factory _$$_StorageFormFactorCopyWith(_$_StorageFormFactor value,
          $Res Function(_$_StorageFormFactor) then) =
      __$$_StorageFormFactorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$_StorageFormFactorCopyWithImpl<$Res>
    extends _$StorageFormFactorCopyWithImpl<$Res, _$_StorageFormFactor>
    implements _$$_StorageFormFactorCopyWith<$Res> {
  __$$_StorageFormFactorCopyWithImpl(
      _$_StorageFormFactor _value, $Res Function(_$_StorageFormFactor) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_StorageFormFactor(
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
class _$_StorageFormFactor implements _StorageFormFactor {
  const _$_StorageFormFactor({required this.id, required this.name});

  factory _$_StorageFormFactor.fromJson(Map<String, dynamic> json) =>
      _$$_StorageFormFactorFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'StorageFormFactor(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StorageFormFactor &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StorageFormFactorCopyWith<_$_StorageFormFactor> get copyWith =>
      __$$_StorageFormFactorCopyWithImpl<_$_StorageFormFactor>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StorageFormFactorToJson(
      this,
    );
  }
}

abstract class _StorageFormFactor implements StorageFormFactor {
  const factory _StorageFormFactor(
      {required final int id,
      required final String name}) = _$_StorageFormFactor;

  factory _StorageFormFactor.fromJson(Map<String, dynamic> json) =
      _$_StorageFormFactor.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_StorageFormFactorCopyWith<_$_StorageFormFactor> get copyWith =>
      throw _privateConstructorUsedError;
}
