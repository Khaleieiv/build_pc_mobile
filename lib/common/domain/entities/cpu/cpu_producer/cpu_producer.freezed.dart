// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cpu_producer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CPUProducer _$CPUProducerFromJson(Map<String, dynamic> json) {
  return _CPUProducer.fromJson(json);
}

/// @nodoc
mixin _$CPUProducer {
  int get id => throw _privateConstructorUsedError;
  String get producer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CPUProducerCopyWith<CPUProducer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CPUProducerCopyWith<$Res> {
  factory $CPUProducerCopyWith(
          CPUProducer value, $Res Function(CPUProducer) then) =
      _$CPUProducerCopyWithImpl<$Res, CPUProducer>;
  @useResult
  $Res call({int id, String producer});
}

/// @nodoc
class _$CPUProducerCopyWithImpl<$Res, $Val extends CPUProducer>
    implements $CPUProducerCopyWith<$Res> {
  _$CPUProducerCopyWithImpl(this._value, this._then);

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
abstract class _$$_CPUProducerCopyWith<$Res>
    implements $CPUProducerCopyWith<$Res> {
  factory _$$_CPUProducerCopyWith(
          _$_CPUProducer value, $Res Function(_$_CPUProducer) then) =
      __$$_CPUProducerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String producer});
}

/// @nodoc
class __$$_CPUProducerCopyWithImpl<$Res>
    extends _$CPUProducerCopyWithImpl<$Res, _$_CPUProducer>
    implements _$$_CPUProducerCopyWith<$Res> {
  __$$_CPUProducerCopyWithImpl(
      _$_CPUProducer _value, $Res Function(_$_CPUProducer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? producer = null,
  }) {
    return _then(_$_CPUProducer(
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
class _$_CPUProducer implements _CPUProducer {
  const _$_CPUProducer({required this.id, required this.producer});

  factory _$_CPUProducer.fromJson(Map<String, dynamic> json) =>
      _$$_CPUProducerFromJson(json);

  @override
  final int id;
  @override
  final String producer;

  @override
  String toString() {
    return 'CPUProducer(id: $id, producer: $producer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CPUProducer &&
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
  _$$_CPUProducerCopyWith<_$_CPUProducer> get copyWith =>
      __$$_CPUProducerCopyWithImpl<_$_CPUProducer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CPUProducerToJson(
      this,
    );
  }
}

abstract class _CPUProducer implements CPUProducer {
  const factory _CPUProducer(
      {required final int id, required final String producer}) = _$_CPUProducer;

  factory _CPUProducer.fromJson(Map<String, dynamic> json) =
      _$_CPUProducer.fromJson;

  @override
  int get id;
  @override
  String get producer;
  @override
  @JsonKey(ignore: true)
  _$$_CPUProducerCopyWith<_$_CPUProducer> get copyWith =>
      throw _privateConstructorUsedError;
}
