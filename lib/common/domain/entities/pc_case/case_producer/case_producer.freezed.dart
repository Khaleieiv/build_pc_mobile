// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'case_producer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CaseProducer _$CaseProducerFromJson(Map<String, dynamic> json) {
  return _CaseProducer.fromJson(json);
}

/// @nodoc
mixin _$CaseProducer {
  int get id => throw _privateConstructorUsedError;
  String get powerSupplyLocation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CaseProducerCopyWith<CaseProducer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaseProducerCopyWith<$Res> {
  factory $CaseProducerCopyWith(
          CaseProducer value, $Res Function(CaseProducer) then) =
      _$CaseProducerCopyWithImpl<$Res, CaseProducer>;
  @useResult
  $Res call({int id, String powerSupplyLocation});
}

/// @nodoc
class _$CaseProducerCopyWithImpl<$Res, $Val extends CaseProducer>
    implements $CaseProducerCopyWith<$Res> {
  _$CaseProducerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? powerSupplyLocation = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      powerSupplyLocation: null == powerSupplyLocation
          ? _value.powerSupplyLocation
          : powerSupplyLocation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CaseProducerCopyWith<$Res>
    implements $CaseProducerCopyWith<$Res> {
  factory _$$_CaseProducerCopyWith(
          _$_CaseProducer value, $Res Function(_$_CaseProducer) then) =
      __$$_CaseProducerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String powerSupplyLocation});
}

/// @nodoc
class __$$_CaseProducerCopyWithImpl<$Res>
    extends _$CaseProducerCopyWithImpl<$Res, _$_CaseProducer>
    implements _$$_CaseProducerCopyWith<$Res> {
  __$$_CaseProducerCopyWithImpl(
      _$_CaseProducer _value, $Res Function(_$_CaseProducer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? powerSupplyLocation = null,
  }) {
    return _then(_$_CaseProducer(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      powerSupplyLocation: null == powerSupplyLocation
          ? _value.powerSupplyLocation
          : powerSupplyLocation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CaseProducer implements _CaseProducer {
  const _$_CaseProducer({required this.id, required this.powerSupplyLocation});

  factory _$_CaseProducer.fromJson(Map<String, dynamic> json) =>
      _$$_CaseProducerFromJson(json);

  @override
  final int id;
  @override
  final String powerSupplyLocation;

  @override
  String toString() {
    return 'CaseProducer(id: $id, powerSupplyLocation: $powerSupplyLocation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CaseProducer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.powerSupplyLocation, powerSupplyLocation) ||
                other.powerSupplyLocation == powerSupplyLocation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, powerSupplyLocation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CaseProducerCopyWith<_$_CaseProducer> get copyWith =>
      __$$_CaseProducerCopyWithImpl<_$_CaseProducer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CaseProducerToJson(
      this,
    );
  }
}

abstract class _CaseProducer implements CaseProducer {
  const factory _CaseProducer(
      {required final int id,
      required final String powerSupplyLocation}) = _$_CaseProducer;

  factory _CaseProducer.fromJson(Map<String, dynamic> json) =
      _$_CaseProducer.fromJson;

  @override
  int get id;
  @override
  String get powerSupplyLocation;
  @override
  @JsonKey(ignore: true)
  _$$_CaseProducerCopyWith<_$_CaseProducer> get copyWith =>
      throw _privateConstructorUsedError;
}
