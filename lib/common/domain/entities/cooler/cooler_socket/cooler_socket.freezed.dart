// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cooler_socket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoolerSocket _$CoolerSocketFromJson(Map<String, dynamic> json) {
  return _CoolerSocket.fromJson(json);
}

/// @nodoc
mixin _$CoolerSocket {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoolerSocketCopyWith<CoolerSocket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoolerSocketCopyWith<$Res> {
  factory $CoolerSocketCopyWith(
          CoolerSocket value, $Res Function(CoolerSocket) then) =
      _$CoolerSocketCopyWithImpl<$Res, CoolerSocket>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$CoolerSocketCopyWithImpl<$Res, $Val extends CoolerSocket>
    implements $CoolerSocketCopyWith<$Res> {
  _$CoolerSocketCopyWithImpl(this._value, this._then);

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
abstract class _$$_CoolerSocketCopyWith<$Res>
    implements $CoolerSocketCopyWith<$Res> {
  factory _$$_CoolerSocketCopyWith(
          _$_CoolerSocket value, $Res Function(_$_CoolerSocket) then) =
      __$$_CoolerSocketCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$_CoolerSocketCopyWithImpl<$Res>
    extends _$CoolerSocketCopyWithImpl<$Res, _$_CoolerSocket>
    implements _$$_CoolerSocketCopyWith<$Res> {
  __$$_CoolerSocketCopyWithImpl(
      _$_CoolerSocket _value, $Res Function(_$_CoolerSocket) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_CoolerSocket(
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
class _$_CoolerSocket extends _CoolerSocket {
  const _$_CoolerSocket({required this.id, required this.name}) : super._();

  factory _$_CoolerSocket.fromJson(Map<String, dynamic> json) =>
      _$$_CoolerSocketFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'CoolerSocket(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoolerSocket &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoolerSocketCopyWith<_$_CoolerSocket> get copyWith =>
      __$$_CoolerSocketCopyWithImpl<_$_CoolerSocket>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoolerSocketToJson(
      this,
    );
  }
}

abstract class _CoolerSocket extends CoolerSocket {
  const factory _CoolerSocket(
      {required final int id, required final String name}) = _$_CoolerSocket;
  const _CoolerSocket._() : super._();

  factory _CoolerSocket.fromJson(Map<String, dynamic> json) =
      _$_CoolerSocket.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CoolerSocketCopyWith<_$_CoolerSocket> get copyWith =>
      throw _privateConstructorUsedError;
}
