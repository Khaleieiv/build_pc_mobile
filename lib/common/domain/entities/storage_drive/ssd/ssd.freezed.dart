// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ssd.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ssd _$SsdFromJson(Map<String, dynamic> json) {
  return _Ssd.fromJson(json);
}

/// @nodoc
mixin _$Ssd {
  int get id => throw _privateConstructorUsedError;
  Producers get storageProducer => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get storageSize => throw _privateConstructorUsedError;
  StorageFormFactor get storageFormFactor => throw _privateConstructorUsedError;
  StorageInterface get storageInterface => throw _privateConstructorUsedError;
  int get bufferSize => throw _privateConstructorUsedError;
  int get readingSpeed => throw _privateConstructorUsedError;
  int get writingSpeed => throw _privateConstructorUsedError;
  SsdCellsType get ssdCellsType => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get recommendedPrice => throw _privateConstructorUsedError;
  PerformanceLevel? get performanceLevel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SsdCopyWith<Ssd> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SsdCopyWith<$Res> {
  factory $SsdCopyWith(Ssd value, $Res Function(Ssd) then) =
      _$SsdCopyWithImpl<$Res, Ssd>;
  @useResult
  $Res call(
      {int id,
      Producers storageProducer,
      String name,
      int storageSize,
      StorageFormFactor storageFormFactor,
      StorageInterface storageInterface,
      int bufferSize,
      int readingSpeed,
      int writingSpeed,
      SsdCellsType ssdCellsType,
      String description,
      int recommendedPrice,
      PerformanceLevel? performanceLevel});

  $ProducersCopyWith<$Res> get storageProducer;
  $StorageFormFactorCopyWith<$Res> get storageFormFactor;
  $StorageInterfaceCopyWith<$Res> get storageInterface;
  $SsdCellsTypeCopyWith<$Res> get ssdCellsType;
  $PerformanceLevelCopyWith<$Res>? get performanceLevel;
}

/// @nodoc
class _$SsdCopyWithImpl<$Res, $Val extends Ssd> implements $SsdCopyWith<$Res> {
  _$SsdCopyWithImpl(this._value, this._then);

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
    Object? storageFormFactor = null,
    Object? storageInterface = null,
    Object? bufferSize = null,
    Object? readingSpeed = null,
    Object? writingSpeed = null,
    Object? ssdCellsType = null,
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
      ssdCellsType: null == ssdCellsType
          ? _value.ssdCellsType
          : ssdCellsType // ignore: cast_nullable_to_non_nullable
              as SsdCellsType,
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
  $SsdCellsTypeCopyWith<$Res> get ssdCellsType {
    return $SsdCellsTypeCopyWith<$Res>(_value.ssdCellsType, (value) {
      return _then(_value.copyWith(ssdCellsType: value) as $Val);
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
abstract class _$$_SsdCopyWith<$Res> implements $SsdCopyWith<$Res> {
  factory _$$_SsdCopyWith(_$_Ssd value, $Res Function(_$_Ssd) then) =
      __$$_SsdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      Producers storageProducer,
      String name,
      int storageSize,
      StorageFormFactor storageFormFactor,
      StorageInterface storageInterface,
      int bufferSize,
      int readingSpeed,
      int writingSpeed,
      SsdCellsType ssdCellsType,
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
  $SsdCellsTypeCopyWith<$Res> get ssdCellsType;
  @override
  $PerformanceLevelCopyWith<$Res>? get performanceLevel;
}

/// @nodoc
class __$$_SsdCopyWithImpl<$Res> extends _$SsdCopyWithImpl<$Res, _$_Ssd>
    implements _$$_SsdCopyWith<$Res> {
  __$$_SsdCopyWithImpl(_$_Ssd _value, $Res Function(_$_Ssd) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? storageProducer = null,
    Object? name = null,
    Object? storageSize = null,
    Object? storageFormFactor = null,
    Object? storageInterface = null,
    Object? bufferSize = null,
    Object? readingSpeed = null,
    Object? writingSpeed = null,
    Object? ssdCellsType = null,
    Object? description = null,
    Object? recommendedPrice = null,
    Object? performanceLevel = freezed,
  }) {
    return _then(_$_Ssd(
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
      ssdCellsType: null == ssdCellsType
          ? _value.ssdCellsType
          : ssdCellsType // ignore: cast_nullable_to_non_nullable
              as SsdCellsType,
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
class _$_Ssd extends _Ssd {
  const _$_Ssd(
      {required this.id,
      required this.storageProducer,
      required this.name,
      required this.storageSize,
      required this.storageFormFactor,
      required this.storageInterface,
      required this.bufferSize,
      required this.readingSpeed,
      required this.writingSpeed,
      required this.ssdCellsType,
      required this.description,
      required this.recommendedPrice,
      required this.performanceLevel})
      : super._();

  factory _$_Ssd.fromJson(Map<String, dynamic> json) => _$$_SsdFromJson(json);

  @override
  final int id;
  @override
  final Producers storageProducer;
  @override
  final String name;
  @override
  final int storageSize;
  @override
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
  final SsdCellsType ssdCellsType;
  @override
  final String description;
  @override
  final int recommendedPrice;
  @override
  final PerformanceLevel? performanceLevel;

  @override
  String toString() {
    return 'Ssd(id: $id, storageProducer: $storageProducer, name: $name, storageSize: $storageSize, storageFormFactor: $storageFormFactor, storageInterface: $storageInterface, bufferSize: $bufferSize, readingSpeed: $readingSpeed, writingSpeed: $writingSpeed, ssdCellsType: $ssdCellsType, description: $description, recommendedPrice: $recommendedPrice, performanceLevel: $performanceLevel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ssd &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.storageProducer, storageProducer) ||
                other.storageProducer == storageProducer) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.storageSize, storageSize) ||
                other.storageSize == storageSize) &&
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
            (identical(other.ssdCellsType, ssdCellsType) ||
                other.ssdCellsType == ssdCellsType) &&
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
      storageFormFactor,
      storageInterface,
      bufferSize,
      readingSpeed,
      writingSpeed,
      ssdCellsType,
      description,
      recommendedPrice,
      performanceLevel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SsdCopyWith<_$_Ssd> get copyWith =>
      __$$_SsdCopyWithImpl<_$_Ssd>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SsdToJson(
      this,
    );
  }
}

abstract class _Ssd extends Ssd {
  const factory _Ssd(
      {required final int id,
      required final Producers storageProducer,
      required final String name,
      required final int storageSize,
      required final StorageFormFactor storageFormFactor,
      required final StorageInterface storageInterface,
      required final int bufferSize,
      required final int readingSpeed,
      required final int writingSpeed,
      required final SsdCellsType ssdCellsType,
      required final String description,
      required final int recommendedPrice,
      required final PerformanceLevel? performanceLevel}) = _$_Ssd;
  const _Ssd._() : super._();

  factory _Ssd.fromJson(Map<String, dynamic> json) = _$_Ssd.fromJson;

  @override
  int get id;
  @override
  Producers get storageProducer;
  @override
  String get name;
  @override
  int get storageSize;
  @override
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
  SsdCellsType get ssdCellsType;
  @override
  String get description;
  @override
  int get recommendedPrice;
  @override
  PerformanceLevel? get performanceLevel;
  @override
  @JsonKey(ignore: true)
  _$$_SsdCopyWith<_$_Ssd> get copyWith => throw _privateConstructorUsedError;
}
