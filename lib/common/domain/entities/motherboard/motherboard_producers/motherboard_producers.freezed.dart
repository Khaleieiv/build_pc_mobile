// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'motherboard_producers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MotherboardProducers _$MotherboardProducersFromJson(Map<String, dynamic> json) {
  return _MotherboardProducers.fromJson(json);
}

/// @nodoc
mixin _$MotherboardProducers {
  int get id => throw _privateConstructorUsedError;
  String get producer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MotherboardProducersCopyWith<MotherboardProducers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MotherboardProducersCopyWith<$Res> {
  factory $MotherboardProducersCopyWith(MotherboardProducers value,
          $Res Function(MotherboardProducers) then) =
      _$MotherboardProducersCopyWithImpl<$Res, MotherboardProducers>;
  @useResult
  $Res call({int id, String producer});
}

/// @nodoc
class _$MotherboardProducersCopyWithImpl<$Res,
        $Val extends MotherboardProducers>
    implements $MotherboardProducersCopyWith<$Res> {
  _$MotherboardProducersCopyWithImpl(this._value, this._then);

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
abstract class _$$_MotherboardProducersCopyWith<$Res>
    implements $MotherboardProducersCopyWith<$Res> {
  factory _$$_MotherboardProducersCopyWith(_$_MotherboardProducers value,
          $Res Function(_$_MotherboardProducers) then) =
      __$$_MotherboardProducersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String producer});
}

/// @nodoc
class __$$_MotherboardProducersCopyWithImpl<$Res>
    extends _$MotherboardProducersCopyWithImpl<$Res, _$_MotherboardProducers>
    implements _$$_MotherboardProducersCopyWith<$Res> {
  __$$_MotherboardProducersCopyWithImpl(_$_MotherboardProducers _value,
      $Res Function(_$_MotherboardProducers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? producer = null,
  }) {
    return _then(_$_MotherboardProducers(
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
class _$_MotherboardProducers implements _MotherboardProducers {
  const _$_MotherboardProducers({required this.id, required this.producer});

  factory _$_MotherboardProducers.fromJson(Map<String, dynamic> json) =>
      _$$_MotherboardProducersFromJson(json);

  @override
  final int id;
  @override
  final String producer;

  @override
  String toString() {
    return 'MotherboardProducers(id: $id, producer: $producer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MotherboardProducers &&
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
  _$$_MotherboardProducersCopyWith<_$_MotherboardProducers> get copyWith =>
      __$$_MotherboardProducersCopyWithImpl<_$_MotherboardProducers>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MotherboardProducersToJson(
      this,
    );
  }
}

abstract class _MotherboardProducers implements MotherboardProducers {
  const factory _MotherboardProducers(
      {required final int id,
      required final String producer}) = _$_MotherboardProducers;

  factory _MotherboardProducers.fromJson(Map<String, dynamic> json) =
      _$_MotherboardProducers.fromJson;

  @override
  int get id;
  @override
  String get producer;
  @override
  @JsonKey(ignore: true)
  _$$_MotherboardProducersCopyWith<_$_MotherboardProducers> get copyWith =>
      throw _privateConstructorUsedError;
}
