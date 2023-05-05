// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'power_supply_producer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PowerSupplyProducer _$PowerSupplyProducerFromJson(Map<String, dynamic> json) {
  return _PowerSupplyProducer.fromJson(json);
}

/// @nodoc
mixin _$PowerSupplyProducer {
  int get id => throw _privateConstructorUsedError;
  String get producer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PowerSupplyProducerCopyWith<PowerSupplyProducer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PowerSupplyProducerCopyWith<$Res> {
  factory $PowerSupplyProducerCopyWith(
          PowerSupplyProducer value, $Res Function(PowerSupplyProducer) then) =
      _$PowerSupplyProducerCopyWithImpl<$Res, PowerSupplyProducer>;
  @useResult
  $Res call({int id, String producer});
}

/// @nodoc
class _$PowerSupplyProducerCopyWithImpl<$Res, $Val extends PowerSupplyProducer>
    implements $PowerSupplyProducerCopyWith<$Res> {
  _$PowerSupplyProducerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? producer = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      producer: null == producer
          ? _value.producer
          : producer // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PowerSupplyProducerCopyWith<$Res>
    implements $PowerSupplyProducerCopyWith<$Res> {
  factory _$$_PowerSupplyProducerCopyWith(_$_PowerSupplyProducer value,
          $Res Function(_$_PowerSupplyProducer) then) =
      __$$_PowerSupplyProducerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String producer});
}

/// @nodoc
class __$$_PowerSupplyProducerCopyWithImpl<$Res>
    extends _$PowerSupplyProducerCopyWithImpl<$Res, _$_PowerSupplyProducer>
    implements _$$_PowerSupplyProducerCopyWith<$Res> {
  __$$_PowerSupplyProducerCopyWithImpl(_$_PowerSupplyProducer _value,
      $Res Function(_$_PowerSupplyProducer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? producer = null,
  }) {
    return _then(_$_PowerSupplyProducer(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      producer: null == producer
          ? _value.producer
          : producer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PowerSupplyProducer implements _PowerSupplyProducer {
  const _$_PowerSupplyProducer({required this.id, required this.producer});

  factory _$_PowerSupplyProducer.fromJson(Map<String, dynamic> json) =>
      _$$_PowerSupplyProducerFromJson(json);

  @override
  final int id;
  @override
  final String producer;

  @override
  String toString() {
    return 'PowerSupplyProducer(id: $id, producer: $producer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PowerSupplyProducer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.producer, producer) ||
                other.producer == producer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, producer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PowerSupplyProducerCopyWith<_$_PowerSupplyProducer> get copyWith =>
      __$$_PowerSupplyProducerCopyWithImpl<_$_PowerSupplyProducer>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PowerSupplyProducerToJson(
      this,
    );
  }
}

abstract class _PowerSupplyProducer implements PowerSupplyProducer {
  const factory _PowerSupplyProducer(
      {required final int id,
      required final String producer}) = _$_PowerSupplyProducer;

  factory _PowerSupplyProducer.fromJson(Map<String, dynamic> json) =
      _$_PowerSupplyProducer.fromJson;

  @override
  int get id;
  @override
  String get producer;
  @override
  @JsonKey(ignore: true)
  _$$_PowerSupplyProducerCopyWith<_$_PowerSupplyProducer> get copyWith =>
      throw _privateConstructorUsedError;
}
