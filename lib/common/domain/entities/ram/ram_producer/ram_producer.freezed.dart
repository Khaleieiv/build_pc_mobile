// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ram_producer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RamProducer _$RamProducerFromJson(Map<String, dynamic> json) {
  return _RamProducer.fromJson(json);
}

/// @nodoc
mixin _$RamProducer {
  int get id => throw _privateConstructorUsedError;
  String get producer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RamProducerCopyWith<RamProducer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RamProducerCopyWith<$Res> {
  factory $RamProducerCopyWith(
          RamProducer value, $Res Function(RamProducer) then) =
      _$RamProducerCopyWithImpl<$Res, RamProducer>;
  @useResult
  $Res call({int id, String producer});
}

/// @nodoc
class _$RamProducerCopyWithImpl<$Res, $Val extends RamProducer>
    implements $RamProducerCopyWith<$Res> {
  _$RamProducerCopyWithImpl(this._value, this._then);

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
abstract class _$$_RamProducerCopyWith<$Res>
    implements $RamProducerCopyWith<$Res> {
  factory _$$_RamProducerCopyWith(
          _$_RamProducer value, $Res Function(_$_RamProducer) then) =
      __$$_RamProducerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String producer});
}

/// @nodoc
class __$$_RamProducerCopyWithImpl<$Res>
    extends _$RamProducerCopyWithImpl<$Res, _$_RamProducer>
    implements _$$_RamProducerCopyWith<$Res> {
  __$$_RamProducerCopyWithImpl(
      _$_RamProducer _value, $Res Function(_$_RamProducer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? producer = null,
  }) {
    return _then(_$_RamProducer(
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
class _$_RamProducer implements _RamProducer {
  const _$_RamProducer({required this.id, required this.producer});

  factory _$_RamProducer.fromJson(Map<String, dynamic> json) =>
      _$$_RamProducerFromJson(json);

  @override
  final int id;
  @override
  final String producer;

  @override
  String toString() {
    return 'RamProducer(id: $id, producer: $producer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RamProducer &&
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
  _$$_RamProducerCopyWith<_$_RamProducer> get copyWith =>
      __$$_RamProducerCopyWithImpl<_$_RamProducer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RamProducerToJson(
      this,
    );
  }
}

abstract class _RamProducer implements RamProducer {
  const factory _RamProducer(
      {required final int id, required final String producer}) = _$_RamProducer;

  factory _RamProducer.fromJson(Map<String, dynamic> json) =
      _$_RamProducer.fromJson;

  @override
  int get id;
  @override
  String get producer;
  @override
  @JsonKey(ignore: true)
  _$$_RamProducerCopyWith<_$_RamProducer> get copyWith =>
      throw _privateConstructorUsedError;
}
