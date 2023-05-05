// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cooler_producer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CoolerProducer _$CoolerProducerFromJson(Map<String, dynamic> json) {
  return _CoolerProducer.fromJson(json);
}

/// @nodoc
mixin _$CoolerProducer {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoolerProducerCopyWith<CoolerProducer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoolerProducerCopyWith<$Res> {
  factory $CoolerProducerCopyWith(
          CoolerProducer value, $Res Function(CoolerProducer) then) =
      _$CoolerProducerCopyWithImpl<$Res, CoolerProducer>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$CoolerProducerCopyWithImpl<$Res, $Val extends CoolerProducer>
    implements $CoolerProducerCopyWith<$Res> {
  _$CoolerProducerCopyWithImpl(this._value, this._then);

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
abstract class _$$_CoolerProducerCopyWith<$Res>
    implements $CoolerProducerCopyWith<$Res> {
  factory _$$_CoolerProducerCopyWith(
          _$_CoolerProducer value, $Res Function(_$_CoolerProducer) then) =
      __$$_CoolerProducerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$_CoolerProducerCopyWithImpl<$Res>
    extends _$CoolerProducerCopyWithImpl<$Res, _$_CoolerProducer>
    implements _$$_CoolerProducerCopyWith<$Res> {
  __$$_CoolerProducerCopyWithImpl(
      _$_CoolerProducer _value, $Res Function(_$_CoolerProducer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_CoolerProducer(
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
class _$_CoolerProducer implements _CoolerProducer {
  const _$_CoolerProducer({required this.id, required this.name});

  factory _$_CoolerProducer.fromJson(Map<String, dynamic> json) =>
      _$$_CoolerProducerFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'CoolerProducer(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoolerProducer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoolerProducerCopyWith<_$_CoolerProducer> get copyWith =>
      __$$_CoolerProducerCopyWithImpl<_$_CoolerProducer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoolerProducerToJson(
      this,
    );
  }
}

abstract class _CoolerProducer implements CoolerProducer {
  const factory _CoolerProducer(
      {required final int id, required final String name}) = _$_CoolerProducer;

  factory _CoolerProducer.fromJson(Map<String, dynamic> json) =
      _$_CoolerProducer.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CoolerProducerCopyWith<_$_CoolerProducer> get copyWith =>
      throw _privateConstructorUsedError;
}
