// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'storage_producer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StorageProducer _$StorageProducerFromJson(Map<String, dynamic> json) {
  return _StorageProducer.fromJson(json);
}

/// @nodoc
mixin _$StorageProducer {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StorageProducerCopyWith<StorageProducer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageProducerCopyWith<$Res> {
  factory $StorageProducerCopyWith(
          StorageProducer value, $Res Function(StorageProducer) then) =
      _$StorageProducerCopyWithImpl<$Res, StorageProducer>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$StorageProducerCopyWithImpl<$Res, $Val extends StorageProducer>
    implements $StorageProducerCopyWith<$Res> {
  _$StorageProducerCopyWithImpl(this._value, this._then);

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
abstract class _$$_StorageProducerCopyWith<$Res>
    implements $StorageProducerCopyWith<$Res> {
  factory _$$_StorageProducerCopyWith(
          _$_StorageProducer value, $Res Function(_$_StorageProducer) then) =
      __$$_StorageProducerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$_StorageProducerCopyWithImpl<$Res>
    extends _$StorageProducerCopyWithImpl<$Res, _$_StorageProducer>
    implements _$$_StorageProducerCopyWith<$Res> {
  __$$_StorageProducerCopyWithImpl(
      _$_StorageProducer _value, $Res Function(_$_StorageProducer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_StorageProducer(
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
class _$_StorageProducer implements _StorageProducer {
  const _$_StorageProducer({required this.id, required this.name});

  factory _$_StorageProducer.fromJson(Map<String, dynamic> json) =>
      _$$_StorageProducerFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'StorageProducer(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StorageProducer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StorageProducerCopyWith<_$_StorageProducer> get copyWith =>
      __$$_StorageProducerCopyWithImpl<_$_StorageProducer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StorageProducerToJson(
      this,
    );
  }
}

abstract class _StorageProducer implements StorageProducer {
  const factory _StorageProducer(
      {required final int id, required final String name}) = _$_StorageProducer;

  factory _StorageProducer.fromJson(Map<String, dynamic> json) =
      _$_StorageProducer.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_StorageProducerCopyWith<_$_StorageProducer> get copyWith =>
      throw _privateConstructorUsedError;
}
