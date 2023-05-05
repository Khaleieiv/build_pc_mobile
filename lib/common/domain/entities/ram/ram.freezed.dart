// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ram.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ram _$RamFromJson(Map<String, dynamic> json) {
  return _Ram.fromJson(json);
}

/// @nodoc
mixin _$Ram {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  RamProducer get ramProducer => throw _privateConstructorUsedError;
  RamMemoryType get ramMemoryType => throw _privateConstructorUsedError;
  int get memoryCapacity => throw _privateConstructorUsedError;
  int get frequency => throw _privateConstructorUsedError;
  RamTimings get ramTimings => throw _privateConstructorUsedError;
  double get powerSupplyVoltage => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get recommendedPrice => throw _privateConstructorUsedError;
  PerformanceLevel get performanceLevel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RamCopyWith<Ram> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RamCopyWith<$Res> {
  factory $RamCopyWith(Ram value, $Res Function(Ram) then) =
      _$RamCopyWithImpl<$Res, Ram>;
  @useResult
  $Res call(
      {int id,
      String name,
      RamProducer ramProducer,
      RamMemoryType ramMemoryType,
      int memoryCapacity,
      int frequency,
      RamTimings ramTimings,
      double powerSupplyVoltage,
      String description,
      int recommendedPrice,
      PerformanceLevel performanceLevel});

  $RamProducerCopyWith<$Res> get ramProducer;
  $RamMemoryTypeCopyWith<$Res> get ramMemoryType;
  $RamTimingsCopyWith<$Res> get ramTimings;
  $PerformanceLevelCopyWith<$Res> get performanceLevel;
}

/// @nodoc
class _$RamCopyWithImpl<$Res, $Val extends Ram> implements $RamCopyWith<$Res> {
  _$RamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? ramProducer = null,
    Object? ramMemoryType = null,
    Object? memoryCapacity = null,
    Object? frequency = null,
    Object? ramTimings = null,
    Object? powerSupplyVoltage = null,
    Object? description = null,
    Object? recommendedPrice = null,
    Object? performanceLevel = null,
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
      ramProducer: null == ramProducer
          ? _value.ramProducer
          : ramProducer // ignore: cast_nullable_to_non_nullable
              as RamProducer,
      ramMemoryType: null == ramMemoryType
          ? _value.ramMemoryType
          : ramMemoryType // ignore: cast_nullable_to_non_nullable
              as RamMemoryType,
      memoryCapacity: null == memoryCapacity
          ? _value.memoryCapacity
          : memoryCapacity // ignore: cast_nullable_to_non_nullable
              as int,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int,
      ramTimings: null == ramTimings
          ? _value.ramTimings
          : ramTimings // ignore: cast_nullable_to_non_nullable
              as RamTimings,
      powerSupplyVoltage: null == powerSupplyVoltage
          ? _value.powerSupplyVoltage
          : powerSupplyVoltage // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      recommendedPrice: null == recommendedPrice
          ? _value.recommendedPrice
          : recommendedPrice // ignore: cast_nullable_to_non_nullable
              as int,
      performanceLevel: null == performanceLevel
          ? _value.performanceLevel
          : performanceLevel // ignore: cast_nullable_to_non_nullable
              as PerformanceLevel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RamProducerCopyWith<$Res> get ramProducer {
    return $RamProducerCopyWith<$Res>(_value.ramProducer, (value) {
      return _then(_value.copyWith(ramProducer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RamMemoryTypeCopyWith<$Res> get ramMemoryType {
    return $RamMemoryTypeCopyWith<$Res>(_value.ramMemoryType, (value) {
      return _then(_value.copyWith(ramMemoryType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RamTimingsCopyWith<$Res> get ramTimings {
    return $RamTimingsCopyWith<$Res>(_value.ramTimings, (value) {
      return _then(_value.copyWith(ramTimings: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PerformanceLevelCopyWith<$Res> get performanceLevel {
    return $PerformanceLevelCopyWith<$Res>(_value.performanceLevel, (value) {
      return _then(_value.copyWith(performanceLevel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RamCopyWith<$Res> implements $RamCopyWith<$Res> {
  factory _$$_RamCopyWith(_$_Ram value, $Res Function(_$_Ram) then) =
      __$$_RamCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      RamProducer ramProducer,
      RamMemoryType ramMemoryType,
      int memoryCapacity,
      int frequency,
      RamTimings ramTimings,
      double powerSupplyVoltage,
      String description,
      int recommendedPrice,
      PerformanceLevel performanceLevel});

  @override
  $RamProducerCopyWith<$Res> get ramProducer;
  @override
  $RamMemoryTypeCopyWith<$Res> get ramMemoryType;
  @override
  $RamTimingsCopyWith<$Res> get ramTimings;
  @override
  $PerformanceLevelCopyWith<$Res> get performanceLevel;
}

/// @nodoc
class __$$_RamCopyWithImpl<$Res> extends _$RamCopyWithImpl<$Res, _$_Ram>
    implements _$$_RamCopyWith<$Res> {
  __$$_RamCopyWithImpl(_$_Ram _value, $Res Function(_$_Ram) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? ramProducer = null,
    Object? ramMemoryType = null,
    Object? memoryCapacity = null,
    Object? frequency = null,
    Object? ramTimings = null,
    Object? powerSupplyVoltage = null,
    Object? description = null,
    Object? recommendedPrice = null,
    Object? performanceLevel = null,
  }) {
    return _then(_$_Ram(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      ramProducer: null == ramProducer
          ? _value.ramProducer
          : ramProducer // ignore: cast_nullable_to_non_nullable
              as RamProducer,
      ramMemoryType: null == ramMemoryType
          ? _value.ramMemoryType
          : ramMemoryType // ignore: cast_nullable_to_non_nullable
              as RamMemoryType,
      memoryCapacity: null == memoryCapacity
          ? _value.memoryCapacity
          : memoryCapacity // ignore: cast_nullable_to_non_nullable
              as int,
      frequency: null == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as int,
      ramTimings: null == ramTimings
          ? _value.ramTimings
          : ramTimings // ignore: cast_nullable_to_non_nullable
              as RamTimings,
      powerSupplyVoltage: null == powerSupplyVoltage
          ? _value.powerSupplyVoltage
          : powerSupplyVoltage // ignore: cast_nullable_to_non_nullable
              as double,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      recommendedPrice: null == recommendedPrice
          ? _value.recommendedPrice
          : recommendedPrice // ignore: cast_nullable_to_non_nullable
              as int,
      performanceLevel: null == performanceLevel
          ? _value.performanceLevel
          : performanceLevel // ignore: cast_nullable_to_non_nullable
              as PerformanceLevel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ram implements _Ram {
  const _$_Ram(
      {required this.id,
      required this.name,
      required this.ramProducer,
      required this.ramMemoryType,
      required this.memoryCapacity,
      required this.frequency,
      required this.ramTimings,
      required this.powerSupplyVoltage,
      required this.description,
      required this.recommendedPrice,
      required this.performanceLevel});

  factory _$_Ram.fromJson(Map<String, dynamic> json) => _$$_RamFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final RamProducer ramProducer;
  @override
  final RamMemoryType ramMemoryType;
  @override
  final int memoryCapacity;
  @override
  final int frequency;
  @override
  final RamTimings ramTimings;
  @override
  final double powerSupplyVoltage;
  @override
  final String description;
  @override
  final int recommendedPrice;
  @override
  final PerformanceLevel performanceLevel;

  @override
  String toString() {
    return 'Ram(id: $id, name: $name, ramProducer: $ramProducer, ramMemoryType: $ramMemoryType, memoryCapacity: $memoryCapacity, frequency: $frequency, ramTimings: $ramTimings, powerSupplyVoltage: $powerSupplyVoltage, description: $description, recommendedPrice: $recommendedPrice, performanceLevel: $performanceLevel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ram &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.ramProducer, ramProducer) ||
                other.ramProducer == ramProducer) &&
            (identical(other.ramMemoryType, ramMemoryType) ||
                other.ramMemoryType == ramMemoryType) &&
            (identical(other.memoryCapacity, memoryCapacity) ||
                other.memoryCapacity == memoryCapacity) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.ramTimings, ramTimings) ||
                other.ramTimings == ramTimings) &&
            (identical(other.powerSupplyVoltage, powerSupplyVoltage) ||
                other.powerSupplyVoltage == powerSupplyVoltage) &&
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
      name,
      ramProducer,
      ramMemoryType,
      memoryCapacity,
      frequency,
      ramTimings,
      powerSupplyVoltage,
      description,
      recommendedPrice,
      performanceLevel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RamCopyWith<_$_Ram> get copyWith =>
      __$$_RamCopyWithImpl<_$_Ram>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RamToJson(
      this,
    );
  }
}

abstract class _Ram implements Ram {
  const factory _Ram(
      {required final int id,
      required final String name,
      required final RamProducer ramProducer,
      required final RamMemoryType ramMemoryType,
      required final int memoryCapacity,
      required final int frequency,
      required final RamTimings ramTimings,
      required final double powerSupplyVoltage,
      required final String description,
      required final int recommendedPrice,
      required final PerformanceLevel performanceLevel}) = _$_Ram;

  factory _Ram.fromJson(Map<String, dynamic> json) = _$_Ram.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  RamProducer get ramProducer;
  @override
  RamMemoryType get ramMemoryType;
  @override
  int get memoryCapacity;
  @override
  int get frequency;
  @override
  RamTimings get ramTimings;
  @override
  double get powerSupplyVoltage;
  @override
  String get description;
  @override
  int get recommendedPrice;
  @override
  PerformanceLevel get performanceLevel;
  @override
  @JsonKey(ignore: true)
  _$$_RamCopyWith<_$_Ram> get copyWith => throw _privateConstructorUsedError;
}
