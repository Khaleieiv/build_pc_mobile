// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gpu_producer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GPUProducer _$GPUProducerFromJson(Map<String, dynamic> json) {
  return _GPUProducer.fromJson(json);
}

/// @nodoc
mixin _$GPUProducer {
  int get id => throw _privateConstructorUsedError;
  String get producer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GPUProducerCopyWith<GPUProducer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GPUProducerCopyWith<$Res> {
  factory $GPUProducerCopyWith(
          GPUProducer value, $Res Function(GPUProducer) then) =
      _$GPUProducerCopyWithImpl<$Res, GPUProducer>;
  @useResult
  $Res call({int id, String producer});
}

/// @nodoc
class _$GPUProducerCopyWithImpl<$Res, $Val extends GPUProducer>
    implements $GPUProducerCopyWith<$Res> {
  _$GPUProducerCopyWithImpl(this._value, this._then);

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
abstract class _$$_GPUProducerCopyWith<$Res>
    implements $GPUProducerCopyWith<$Res> {
  factory _$$_GPUProducerCopyWith(
          _$_GPUProducer value, $Res Function(_$_GPUProducer) then) =
      __$$_GPUProducerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String producer});
}

/// @nodoc
class __$$_GPUProducerCopyWithImpl<$Res>
    extends _$GPUProducerCopyWithImpl<$Res, _$_GPUProducer>
    implements _$$_GPUProducerCopyWith<$Res> {
  __$$_GPUProducerCopyWithImpl(
      _$_GPUProducer _value, $Res Function(_$_GPUProducer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? producer = null,
  }) {
    return _then(_$_GPUProducer(
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
class _$_GPUProducer implements _GPUProducer {
  const _$_GPUProducer({required this.id, required this.producer});

  factory _$_GPUProducer.fromJson(Map<String, dynamic> json) =>
      _$$_GPUProducerFromJson(json);

  @override
  final int id;
  @override
  final String producer;

  @override
  String toString() {
    return 'GPUProducer(id: $id, producer: $producer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GPUProducer &&
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
  _$$_GPUProducerCopyWith<_$_GPUProducer> get copyWith =>
      __$$_GPUProducerCopyWithImpl<_$_GPUProducer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GPUProducerToJson(
      this,
    );
  }
}

abstract class _GPUProducer implements GPUProducer {
  const factory _GPUProducer(
      {required final int id, required final String producer}) = _$_GPUProducer;

  factory _GPUProducer.fromJson(Map<String, dynamic> json) =
      _$_GPUProducer.fromJson;

  @override
  int get id;
  @override
  String get producer;
  @override
  @JsonKey(ignore: true)
  _$$_GPUProducerCopyWith<_$_GPUProducer> get copyWith =>
      throw _privateConstructorUsedError;
}
