// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'motherboard_network.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MotherboardNetwork _$MotherboardNetworkFromJson(Map<String, dynamic> json) {
  return _MotherboardNetwork.fromJson(json);
}

/// @nodoc
mixin _$MotherboardNetwork {
  int get id => throw _privateConstructorUsedError;
  String get network => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MotherboardNetworkCopyWith<MotherboardNetwork> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MotherboardNetworkCopyWith<$Res> {
  factory $MotherboardNetworkCopyWith(
          MotherboardNetwork value, $Res Function(MotherboardNetwork) then) =
      _$MotherboardNetworkCopyWithImpl<$Res, MotherboardNetwork>;
  @useResult
  $Res call({int id, String network});
}

/// @nodoc
class _$MotherboardNetworkCopyWithImpl<$Res, $Val extends MotherboardNetwork>
    implements $MotherboardNetworkCopyWith<$Res> {
  _$MotherboardNetworkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? network = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MotherboardNetworkCopyWith<$Res>
    implements $MotherboardNetworkCopyWith<$Res> {
  factory _$$_MotherboardNetworkCopyWith(_$_MotherboardNetwork value,
          $Res Function(_$_MotherboardNetwork) then) =
      __$$_MotherboardNetworkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String network});
}

/// @nodoc
class __$$_MotherboardNetworkCopyWithImpl<$Res>
    extends _$MotherboardNetworkCopyWithImpl<$Res, _$_MotherboardNetwork>
    implements _$$_MotherboardNetworkCopyWith<$Res> {
  __$$_MotherboardNetworkCopyWithImpl(
      _$_MotherboardNetwork _value, $Res Function(_$_MotherboardNetwork) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? network = null,
  }) {
    return _then(_$_MotherboardNetwork(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      network: null == network
          ? _value.network
          : network // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MotherboardNetwork implements _MotherboardNetwork {
  const _$_MotherboardNetwork({required this.id, required this.network});

  factory _$_MotherboardNetwork.fromJson(Map<String, dynamic> json) =>
      _$$_MotherboardNetworkFromJson(json);

  @override
  final int id;
  @override
  final String network;

  @override
  String toString() {
    return 'MotherboardNetwork(id: $id, network: $network)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MotherboardNetwork &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.network, network) || other.network == network));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, network);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MotherboardNetworkCopyWith<_$_MotherboardNetwork> get copyWith =>
      __$$_MotherboardNetworkCopyWithImpl<_$_MotherboardNetwork>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MotherboardNetworkToJson(
      this,
    );
  }
}

abstract class _MotherboardNetwork implements MotherboardNetwork {
  const factory _MotherboardNetwork(
      {required final int id,
      required final String network}) = _$_MotherboardNetwork;

  factory _MotherboardNetwork.fromJson(Map<String, dynamic> json) =
      _$_MotherboardNetwork.fromJson;

  @override
  int get id;
  @override
  String get network;
  @override
  @JsonKey(ignore: true)
  _$$_MotherboardNetworkCopyWith<_$_MotherboardNetwork> get copyWith =>
      throw _privateConstructorUsedError;
}