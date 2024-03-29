// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'motherboard_socket.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MotherboardSocket _$MotherboardSocketFromJson(Map<String, dynamic> json) {
  return _MotherboardSocket.fromJson(json);
}

/// @nodoc
mixin _$MotherboardSocket {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'socket')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MotherboardSocketCopyWith<MotherboardSocket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MotherboardSocketCopyWith<$Res> {
  factory $MotherboardSocketCopyWith(
          MotherboardSocket value, $Res Function(MotherboardSocket) then) =
      _$MotherboardSocketCopyWithImpl<$Res, MotherboardSocket>;
  @useResult
  $Res call({int id, @JsonKey(name: 'socket') String name});
}

/// @nodoc
class _$MotherboardSocketCopyWithImpl<$Res, $Val extends MotherboardSocket>
    implements $MotherboardSocketCopyWith<$Res> {
  _$MotherboardSocketCopyWithImpl(this._value, this._then);

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
abstract class _$$_MotherboardSocketCopyWith<$Res>
    implements $MotherboardSocketCopyWith<$Res> {
  factory _$$_MotherboardSocketCopyWith(_$_MotherboardSocket value,
          $Res Function(_$_MotherboardSocket) then) =
      __$$_MotherboardSocketCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, @JsonKey(name: 'socket') String name});
}

/// @nodoc
class __$$_MotherboardSocketCopyWithImpl<$Res>
    extends _$MotherboardSocketCopyWithImpl<$Res, _$_MotherboardSocket>
    implements _$$_MotherboardSocketCopyWith<$Res> {
  __$$_MotherboardSocketCopyWithImpl(
      _$_MotherboardSocket _value, $Res Function(_$_MotherboardSocket) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_MotherboardSocket(
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
class _$_MotherboardSocket extends _MotherboardSocket {
  const _$_MotherboardSocket(
      {required this.id, @JsonKey(name: 'socket') required this.name})
      : super._();

  factory _$_MotherboardSocket.fromJson(Map<String, dynamic> json) =>
      _$$_MotherboardSocketFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'socket')
  final String name;

  @override
  String toString() {
    return 'MotherboardSocket(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MotherboardSocket &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MotherboardSocketCopyWith<_$_MotherboardSocket> get copyWith =>
      __$$_MotherboardSocketCopyWithImpl<_$_MotherboardSocket>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MotherboardSocketToJson(
      this,
    );
  }
}

abstract class _MotherboardSocket extends MotherboardSocket {
  const factory _MotherboardSocket(
          {required final int id,
          @JsonKey(name: 'socket') required final String name}) =
      _$_MotherboardSocket;
  const _MotherboardSocket._() : super._();

  factory _MotherboardSocket.fromJson(Map<String, dynamic> json) =
      _$_MotherboardSocket.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'socket')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_MotherboardSocketCopyWith<_$_MotherboardSocket> get copyWith =>
      throw _privateConstructorUsedError;
}
