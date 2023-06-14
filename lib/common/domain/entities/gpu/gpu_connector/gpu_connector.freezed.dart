// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gpu_connector.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GPUConnector _$GPUConnectorFromJson(Map<String, dynamic> json) {
  return _GPUConnector.fromJson(json);
}

/// @nodoc
mixin _$GPUConnector {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'connector')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GPUConnectorCopyWith<GPUConnector> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GPUConnectorCopyWith<$Res> {
  factory $GPUConnectorCopyWith(
          GPUConnector value, $Res Function(GPUConnector) then) =
      _$GPUConnectorCopyWithImpl<$Res, GPUConnector>;
  @useResult
  $Res call({int id, @JsonKey(name: 'connector') String name});
}

/// @nodoc
class _$GPUConnectorCopyWithImpl<$Res, $Val extends GPUConnector>
    implements $GPUConnectorCopyWith<$Res> {
  _$GPUConnectorCopyWithImpl(this._value, this._then);

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
abstract class _$$_GPUConnectorCopyWith<$Res>
    implements $GPUConnectorCopyWith<$Res> {
  factory _$$_GPUConnectorCopyWith(
          _$_GPUConnector value, $Res Function(_$_GPUConnector) then) =
      __$$_GPUConnectorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, @JsonKey(name: 'connector') String name});
}

/// @nodoc
class __$$_GPUConnectorCopyWithImpl<$Res>
    extends _$GPUConnectorCopyWithImpl<$Res, _$_GPUConnector>
    implements _$$_GPUConnectorCopyWith<$Res> {
  __$$_GPUConnectorCopyWithImpl(
      _$_GPUConnector _value, $Res Function(_$_GPUConnector) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_GPUConnector(
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
class _$_GPUConnector extends _GPUConnector {
  const _$_GPUConnector(
      {required this.id, @JsonKey(name: 'connector') required this.name})
      : super._();

  factory _$_GPUConnector.fromJson(Map<String, dynamic> json) =>
      _$$_GPUConnectorFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'connector')
  final String name;

  @override
  String toString() {
    return 'GPUConnector(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GPUConnector &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GPUConnectorCopyWith<_$_GPUConnector> get copyWith =>
      __$$_GPUConnectorCopyWithImpl<_$_GPUConnector>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GPUConnectorToJson(
      this,
    );
  }
}

abstract class _GPUConnector extends GPUConnector {
  const factory _GPUConnector(
          {required final int id,
          @JsonKey(name: 'connector') required final String name}) =
      _$_GPUConnector;
  const _GPUConnector._() : super._();

  factory _GPUConnector.fromJson(Map<String, dynamic> json) =
      _$_GPUConnector.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'connector')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_GPUConnectorCopyWith<_$_GPUConnector> get copyWith =>
      throw _privateConstructorUsedError;
}
