// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hdd.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Hdd _$HddFromJson(Map<String, dynamic> json) {
  return _Hdd.fromJson(json);
}

/// @nodoc
mixin _$Hdd {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'producer')
  Producers get storageProducer => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get storageSize => throw _privateConstructorUsedError;
  int get speed => throw _privateConstructorUsedError;
  @JsonKey(name: 'formFactor')
  StorageFormFactor get storageFormFactor => throw _privateConstructorUsedError;
  StorageInterface get storageInterface => throw _privateConstructorUsedError;
  int get bufferSize => throw _privateConstructorUsedError;
  int get readingSpeed => throw _privateConstructorUsedError;
  int get writingSpeed => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get recommendedPrice => throw _privateConstructorUsedError;
  PerformanceLevel? get performanceLevel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HddCopyWith<Hdd> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HddCopyWith<$Res> {
  factory $HddCopyWith(Hdd value, $Res Function(Hdd) then) =
      _$HddCopyWithImpl<$Res, Hdd>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'producer') Producers storageProducer,
      String name,
      int storageSize,
      int speed,
      @JsonKey(name: 'formFactor') StorageFormFactor storageFormFactor,
      StorageInterface storageInterface,
      int bufferSize,
      int readingSpeed,
      int writingSpeed,
      String description,
      int recommendedPrice,
      PerformanceLevel? performanceLevel});

  $ProducersCopyWith<$Res> get storageProducer;
  $StorageFormFactorCopyWith<$Res> get storageFormFactor;
  $StorageInterfaceCopyWith<$Res> get storageInterface;
  $PerformanceLevelCopyWith<$Res>? get performanceLevel;
}

/// @nodoc
class _$HddCopyWithImpl<$Res, $Val extends Hdd> implements $HddCopyWith<$Res> {
  _$HddCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? storageProducer = null,
    Object? name = null,
    Object? storageSize = null,
    Object? speed = null,
    Object? storageFormFactor = null,
    Object? storageInterface = null,
    Object? bufferSize = null,
    Object? readingSpeed = null,
    Object? writingSpeed = null,
    Object? description = null,
    Object? recommendedPrice = null,
    Object? performanceLevel = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      storageProducer: null == storageProducer
          ? _value.storageProducer
          : storageProducer // ignore: cast_nullable_to_non_nullable
              as Producers,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      storageSize: null == storageSize
          ? _value.storageSize
          : storageSize // ignore: cast_nullable_to_non_nullable
              as int,
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as int,
      storageFormFactor: null == storageFormFactor
          ? _value.storageFormFactor
          : storageFormFactor // ignore: cast_nullable_to_non_nullable
              as StorageFormFactor,
      storageInterface: null == storageInterface
          ? _value.storageInterface
          : storageInterface // ignore: cast_nullable_to_non_nullable
              as StorageInterface,
      bufferSize: null == bufferSize
          ? _value.bufferSize
          : bufferSize // ignore: cast_nullable_to_non_nullable
              as int,
      readingSpeed: null == readingSpeed
          ? _value.readingSpeed
          : readingSpeed // ignore: cast_nullable_to_non_nullable
              as int,
      writingSpeed: null == writingSpeed
          ? _value.writingSpeed
          : writingSpeed // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      recommendedPrice: null == recommendedPrice
          ? _value.recommendedPrice
          : recommendedPrice // ignore: cast_nullable_to_non_nullable
              as int,
      performanceLevel: freezed == performanceLevel
          ? _value.performanceLevel
          : performanceLevel // ignore: cast_nullable_to_non_nullable
              as PerformanceLevel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProducersCopyWith<$Res> get storageProducer {
    return $ProducersCopyWith<$Res>(_value.storageProducer, (value) {
      return _then(_value.copyWith(storageProducer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StorageFormFactorCopyWith<$Res> get storageFormFactor {
    return $StorageFormFactorCopyWith<$Res>(_value.storageFormFactor, (value) {
      return _then(_value.copyWith(storageFormFactor: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StorageInterfaceCopyWith<$Res> get storageInterface {
    return $StorageInterfaceCopyWith<$Res>(_value.storageInterface, (value) {
      return _then(_value.copyWith(storageInterface: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PerformanceLevelCopyWith<$Res>? get performanceLevel {
    if (_value.performanceLevel == null) {
      return null;
    }

    return $PerformanceLevelCopyWith<$Res>(_value.performanceLevel!, (value) {
      return _then(_value.copyWith(performanceLevel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HddCopyWith<$Res> implements $HddCopyWith<$Res> {
  factory _$$_HddCopyWith(_$_Hdd value, $Res Function(_$_Hdd) then) =
      __$$_HddCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'producer') Producers storageProducer,
      String name,
      int storageSize,
      int speed,
      @JsonKey(name: 'formFactor') StorageFormFactor storageFormFactor,
      StorageInterface storageInterface,
      int bufferSize,
      int readingSpeed,
      int writingSpeed,
      String description,
      int recommendedPrice,
      PerformanceLevel? performanceLevel});

  @override
  $ProducersCopyWith<$Res> get storageProducer;
  @override
  $StorageFormFactorCopyWith<$Res> get storageFormFactor;
  @override
  $StorageInterfaceCopyWith<$Res> get storageInterface;
  @override
  $PerformanceLevelCopyWith<$Res>? get performanceLevel;
}

/// @nodoc
class __$$_HddCopyWithImpl<$Res> extends _$HddCopyWithImpl<$Res, _$_Hdd>
    implements _$$_HddCopyWith<$Res> {
  __$$_HddCopyWithImpl(_$_Hdd _value, $Res Function(_$_Hdd) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? storageProducer = null,
    Object? name = null,
    Object? storageSize = null,
    Object? speed = null,
    Object? storageFormFactor = null,
    Object? storageInterface = null,
    Object? bufferSize = null,
    Object? readingSpeed = null,
    Object? writingSpeed = null,
    Object? description = null,
    Object? recommendedPrice = null,
    Object? performanceLevel = freezed,
  }) {
    return _then(_$_Hdd(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      storageProducer: null == storageProducer
          ? _value.storageProducer
          : storageProducer // ignore: cast_nullable_to_non_nullable
              as Producers,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      storageSize: null == storageSize
          ? _value.storageSize
          : storageSize // ignore: cast_nullable_to_non_nullable
              as int,
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as int,
      storageFormFactor: null == storageFormFactor
          ? _value.storageFormFactor
          : storageFormFactor // ignore: cast_nullable_to_non_nullable
              as StorageFormFactor,
      storageInterface: null == storageInterface
          ? _value.storageInterface
          : storageInterface // ignore: cast_nullable_to_non_nullable
              as StorageInterface,
      bufferSize: null == bufferSize
          ? _value.bufferSize
          : bufferSize // ignore: cast_nullable_to_non_nullable
              as int,
      readingSpeed: null == readingSpeed
          ? _value.readingSpeed
          : readingSpeed // ignore: cast_nullable_to_non_nullable
              as int,
      writingSpeed: null == writingSpeed
          ? _value.writingSpeed
          : writingSpeed // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      recommendedPrice: null == recommendedPrice
          ? _value.recommendedPrice
          : recommendedPrice // ignore: cast_nullable_to_non_nullable
              as int,
      performanceLevel: freezed == performanceLevel
          ? _value.performanceLevel
          : performanceLevel // ignore: cast_nullable_to_non_nullable
              as PerformanceLevel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Hdd extends _Hdd {
  const _$_Hdd(
      {required this.id,
      @JsonKey(name: 'producer') required this.storageProducer,
      required this.name,
      required this.storageSize,
      required this.speed,
      @JsonKey(name: 'formFactor') required this.storageFormFactor,
      required this.storageInterface,
      required this.bufferSize,
      required this.readingSpeed,
      required this.writingSpeed,
      required this.description,
      required this.recommendedPrice,
      required this.performanceLevel})
      : super._();

  factory _$_Hdd.fromJson(Map<String, dynamic> json) => _$$_HddFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'producer')
  final Producers storageProducer;
  @override
  final String name;
  @override
  final int storageSize;
  @override
  final int speed;
  @override
  @JsonKey(name: 'formFactor')
  final StorageFormFactor storageFormFactor;
  @override
  final StorageInterface storageInterface;
  @override
  final int bufferSize;
  @override
  final int readingSpeed;
  @override
  final int writingSpeed;
  @override
  final String description;
  @override
  final int recommendedPrice;
  @override
  final PerformanceLevel? performanceLevel;

  @override
  String toString() {
    return 'Hdd(id: $id, storageProducer: $storageProducer, name: $name, storageSize: $storageSize, speed: $speed, storageFormFactor: $storageFormFactor, storageInterface: $storageInterface, bufferSize: $bufferSize, readingSpeed: $readingSpeed, writingSpeed: $writingSpeed, description: $description, recommendedPrice: $recommendedPrice, performanceLevel: $performanceLevel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Hdd &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.storageProducer, storageProducer) ||
                other.storageProducer == storageProducer) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.storageSize, storageSize) ||
                other.storageSize == storageSize) &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.storageFormFactor, storageFormFactor) ||
                other.storageFormFactor == storageFormFactor) &&
            (identical(other.storageInterface, storageInterface) ||
                other.storageInterface == storageInterface) &&
            (identical(other.bufferSize, bufferSize) ||
                other.bufferSize == bufferSize) &&
            (identical(other.readingSpeed, readingSpeed) ||
                other.readingSpeed == readingSpeed) &&
            (identical(other.writingSpeed, writingSpeed) ||
                other.writingSpeed == writingSpeed) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.recommendedPrice, recommendedPrice) ||
                other.recommendedPrice == recommendedPrice) &&
            (identical(other.performanceLevel, performanceLevel) ||
                other.performanceLevel == performanceLevel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      storageProducer,
      name,
      storageSize,
      speed,
      storageFormFactor,
      storageInterface,
      bufferSize,
      readingSpeed,
      writingSpeed,
      description,
      recommendedPrice,
      performanceLevel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HddCopyWith<_$_Hdd> get copyWith =>
      __$$_HddCopyWithImpl<_$_Hdd>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HddToJson(
      this,
    );
  }
}

abstract class _Hdd extends Hdd {
  const factory _Hdd(
      {required final int id,
      @JsonKey(name: 'producer')
          required final Producers storageProducer,
      required final String name,
      required final int storageSize,
      required final int speed,
      @JsonKey(name: 'formFactor')
          required final StorageFormFactor storageFormFactor,
      required final StorageInterface storageInterface,
      required final int bufferSize,
      required final int readingSpeed,
      required final int writingSpeed,
      required final String description,
      required final int recommendedPrice,
      required final PerformanceLevel? performanceLevel}) = _$_Hdd;
  const _Hdd._() : super._();

  factory _Hdd.fromJson(Map<String, dynamic> json) = _$_Hdd.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'producer')
  Producers get storageProducer;
  @override
  String get name;
  @override
  int get storageSize;
  @override
  int get speed;
  @override
  @JsonKey(name: 'formFactor')
  StorageFormFactor get storageFormFactor;
  @override
  StorageInterface get storageInterface;
  @override
  int get bufferSize;
  @override
  int get readingSpeed;
  @override
  int get writingSpeed;
  @override
  String get description;
  @override
  int get recommendedPrice;
  @override
  PerformanceLevel? get performanceLevel;
  @override
  @JsonKey(ignore: true)
  _$$_HddCopyWith<_$_Hdd> get copyWith => throw _privateConstructorUsedError;
}
