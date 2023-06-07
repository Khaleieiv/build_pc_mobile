// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cpu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CPU _$CPUFromJson(Map<String, dynamic> json) {
  return _CPU.fromJson(json);
}

/// @nodoc
mixin _$CPU {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Producers? get producer => throw _privateConstructorUsedError;
  int get yearOfRelease => throw _privateConstructorUsedError;
  MotherboardSocket? get socket => throw _privateConstructorUsedError;
  int get countOfCores => throw _privateConstructorUsedError;
  int get countOfThreads => throw _privateConstructorUsedError;
  int get baseFrequency => throw _privateConstructorUsedError;
  int get turboFrequency => throw _privateConstructorUsedError;
  int get l3Cache => throw _privateConstructorUsedError;
  CPUGeneration get cpuGeneration => throw _privateConstructorUsedError;
  int get technicalProcess => throw _privateConstructorUsedError;
  int get tdp => throw _privateConstructorUsedError;
  int get maxTemperature => throw _privateConstructorUsedError;
  bool get embeddedGraphic => throw _privateConstructorUsedError;
  @JsonKey(name: 'pcieVersion')
  CPUPcieVersion? get cpuPcieVersion => throw _privateConstructorUsedError;
  List<CPUTech?> get cpuTech => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get recommendedPrice => throw _privateConstructorUsedError;
  PerformanceLevel? get performanceLevel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CPUCopyWith<CPU> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CPUCopyWith<$Res> {
  factory $CPUCopyWith(CPU value, $Res Function(CPU) then) =
      _$CPUCopyWithImpl<$Res, CPU>;
  @useResult
  $Res call(
      {int id,
      String name,
      Producers? producer,
      int yearOfRelease,
      MotherboardSocket? socket,
      int countOfCores,
      int countOfThreads,
      int baseFrequency,
      int turboFrequency,
      int l3Cache,
      CPUGeneration cpuGeneration,
      int technicalProcess,
      int tdp,
      int maxTemperature,
      bool embeddedGraphic,
      @JsonKey(name: 'pcieVersion') CPUPcieVersion? cpuPcieVersion,
      List<CPUTech?> cpuTech,
      String description,
      int recommendedPrice,
      PerformanceLevel? performanceLevel});

  $ProducersCopyWith<$Res>? get producer;
  $MotherboardSocketCopyWith<$Res>? get socket;
  $CPUGenerationCopyWith<$Res> get cpuGeneration;
  $CPUPcieVersionCopyWith<$Res>? get cpuPcieVersion;
  $PerformanceLevelCopyWith<$Res>? get performanceLevel;
}

/// @nodoc
class _$CPUCopyWithImpl<$Res, $Val extends CPU> implements $CPUCopyWith<$Res> {
  _$CPUCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? producer = freezed,
    Object? yearOfRelease = null,
    Object? socket = freezed,
    Object? countOfCores = null,
    Object? countOfThreads = null,
    Object? baseFrequency = null,
    Object? turboFrequency = null,
    Object? l3Cache = null,
    Object? cpuGeneration = null,
    Object? technicalProcess = null,
    Object? tdp = null,
    Object? maxTemperature = null,
    Object? embeddedGraphic = null,
    Object? cpuPcieVersion = freezed,
    Object? cpuTech = null,
    Object? description = null,
    Object? recommendedPrice = null,
    Object? performanceLevel = freezed,
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
      producer: freezed == producer
          ? _value.producer
          : producer // ignore: cast_nullable_to_non_nullable
              as Producers?,
      yearOfRelease: null == yearOfRelease
          ? _value.yearOfRelease
          : yearOfRelease // ignore: cast_nullable_to_non_nullable
              as int,
      socket: freezed == socket
          ? _value.socket
          : socket // ignore: cast_nullable_to_non_nullable
              as MotherboardSocket?,
      countOfCores: null == countOfCores
          ? _value.countOfCores
          : countOfCores // ignore: cast_nullable_to_non_nullable
              as int,
      countOfThreads: null == countOfThreads
          ? _value.countOfThreads
          : countOfThreads // ignore: cast_nullable_to_non_nullable
              as int,
      baseFrequency: null == baseFrequency
          ? _value.baseFrequency
          : baseFrequency // ignore: cast_nullable_to_non_nullable
              as int,
      turboFrequency: null == turboFrequency
          ? _value.turboFrequency
          : turboFrequency // ignore: cast_nullable_to_non_nullable
              as int,
      l3Cache: null == l3Cache
          ? _value.l3Cache
          : l3Cache // ignore: cast_nullable_to_non_nullable
              as int,
      cpuGeneration: null == cpuGeneration
          ? _value.cpuGeneration
          : cpuGeneration // ignore: cast_nullable_to_non_nullable
              as CPUGeneration,
      technicalProcess: null == technicalProcess
          ? _value.technicalProcess
          : technicalProcess // ignore: cast_nullable_to_non_nullable
              as int,
      tdp: null == tdp
          ? _value.tdp
          : tdp // ignore: cast_nullable_to_non_nullable
              as int,
      maxTemperature: null == maxTemperature
          ? _value.maxTemperature
          : maxTemperature // ignore: cast_nullable_to_non_nullable
              as int,
      embeddedGraphic: null == embeddedGraphic
          ? _value.embeddedGraphic
          : embeddedGraphic // ignore: cast_nullable_to_non_nullable
              as bool,
      cpuPcieVersion: freezed == cpuPcieVersion
          ? _value.cpuPcieVersion
          : cpuPcieVersion // ignore: cast_nullable_to_non_nullable
              as CPUPcieVersion?,
      cpuTech: null == cpuTech
          ? _value.cpuTech
          : cpuTech // ignore: cast_nullable_to_non_nullable
              as List<CPUTech?>,
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
  $ProducersCopyWith<$Res>? get producer {
    if (_value.producer == null) {
      return null;
    }

    return $ProducersCopyWith<$Res>(_value.producer!, (value) {
      return _then(_value.copyWith(producer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MotherboardSocketCopyWith<$Res>? get socket {
    if (_value.socket == null) {
      return null;
    }

    return $MotherboardSocketCopyWith<$Res>(_value.socket!, (value) {
      return _then(_value.copyWith(socket: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CPUGenerationCopyWith<$Res> get cpuGeneration {
    return $CPUGenerationCopyWith<$Res>(_value.cpuGeneration, (value) {
      return _then(_value.copyWith(cpuGeneration: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CPUPcieVersionCopyWith<$Res>? get cpuPcieVersion {
    if (_value.cpuPcieVersion == null) {
      return null;
    }

    return $CPUPcieVersionCopyWith<$Res>(_value.cpuPcieVersion!, (value) {
      return _then(_value.copyWith(cpuPcieVersion: value) as $Val);
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
abstract class _$$_CPUCopyWith<$Res> implements $CPUCopyWith<$Res> {
  factory _$$_CPUCopyWith(_$_CPU value, $Res Function(_$_CPU) then) =
      __$$_CPUCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      Producers? producer,
      int yearOfRelease,
      MotherboardSocket? socket,
      int countOfCores,
      int countOfThreads,
      int baseFrequency,
      int turboFrequency,
      int l3Cache,
      CPUGeneration cpuGeneration,
      int technicalProcess,
      int tdp,
      int maxTemperature,
      bool embeddedGraphic,
      @JsonKey(name: 'pcieVersion') CPUPcieVersion? cpuPcieVersion,
      List<CPUTech?> cpuTech,
      String description,
      int recommendedPrice,
      PerformanceLevel? performanceLevel});

  @override
  $ProducersCopyWith<$Res>? get producer;
  @override
  $MotherboardSocketCopyWith<$Res>? get socket;
  @override
  $CPUGenerationCopyWith<$Res> get cpuGeneration;
  @override
  $CPUPcieVersionCopyWith<$Res>? get cpuPcieVersion;
  @override
  $PerformanceLevelCopyWith<$Res>? get performanceLevel;
}

/// @nodoc
class __$$_CPUCopyWithImpl<$Res> extends _$CPUCopyWithImpl<$Res, _$_CPU>
    implements _$$_CPUCopyWith<$Res> {
  __$$_CPUCopyWithImpl(_$_CPU _value, $Res Function(_$_CPU) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? producer = freezed,
    Object? yearOfRelease = null,
    Object? socket = freezed,
    Object? countOfCores = null,
    Object? countOfThreads = null,
    Object? baseFrequency = null,
    Object? turboFrequency = null,
    Object? l3Cache = null,
    Object? cpuGeneration = null,
    Object? technicalProcess = null,
    Object? tdp = null,
    Object? maxTemperature = null,
    Object? embeddedGraphic = null,
    Object? cpuPcieVersion = freezed,
    Object? cpuTech = null,
    Object? description = null,
    Object? recommendedPrice = null,
    Object? performanceLevel = freezed,
  }) {
    return _then(_$_CPU(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      producer: freezed == producer
          ? _value.producer
          : producer // ignore: cast_nullable_to_non_nullable
              as Producers?,
      yearOfRelease: null == yearOfRelease
          ? _value.yearOfRelease
          : yearOfRelease // ignore: cast_nullable_to_non_nullable
              as int,
      socket: freezed == socket
          ? _value.socket
          : socket // ignore: cast_nullable_to_non_nullable
              as MotherboardSocket?,
      countOfCores: null == countOfCores
          ? _value.countOfCores
          : countOfCores // ignore: cast_nullable_to_non_nullable
              as int,
      countOfThreads: null == countOfThreads
          ? _value.countOfThreads
          : countOfThreads // ignore: cast_nullable_to_non_nullable
              as int,
      baseFrequency: null == baseFrequency
          ? _value.baseFrequency
          : baseFrequency // ignore: cast_nullable_to_non_nullable
              as int,
      turboFrequency: null == turboFrequency
          ? _value.turboFrequency
          : turboFrequency // ignore: cast_nullable_to_non_nullable
              as int,
      l3Cache: null == l3Cache
          ? _value.l3Cache
          : l3Cache // ignore: cast_nullable_to_non_nullable
              as int,
      cpuGeneration: null == cpuGeneration
          ? _value.cpuGeneration
          : cpuGeneration // ignore: cast_nullable_to_non_nullable
              as CPUGeneration,
      technicalProcess: null == technicalProcess
          ? _value.technicalProcess
          : technicalProcess // ignore: cast_nullable_to_non_nullable
              as int,
      tdp: null == tdp
          ? _value.tdp
          : tdp // ignore: cast_nullable_to_non_nullable
              as int,
      maxTemperature: null == maxTemperature
          ? _value.maxTemperature
          : maxTemperature // ignore: cast_nullable_to_non_nullable
              as int,
      embeddedGraphic: null == embeddedGraphic
          ? _value.embeddedGraphic
          : embeddedGraphic // ignore: cast_nullable_to_non_nullable
              as bool,
      cpuPcieVersion: freezed == cpuPcieVersion
          ? _value.cpuPcieVersion
          : cpuPcieVersion // ignore: cast_nullable_to_non_nullable
              as CPUPcieVersion?,
      cpuTech: null == cpuTech
          ? _value._cpuTech
          : cpuTech // ignore: cast_nullable_to_non_nullable
              as List<CPUTech?>,
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
class _$_CPU extends _CPU {
  const _$_CPU(
      {required this.id,
      required this.name,
      required this.producer,
      required this.yearOfRelease,
      required this.socket,
      required this.countOfCores,
      required this.countOfThreads,
      required this.baseFrequency,
      required this.turboFrequency,
      required this.l3Cache,
      required this.cpuGeneration,
      required this.technicalProcess,
      required this.tdp,
      required this.maxTemperature,
      required this.embeddedGraphic,
      @JsonKey(name: 'pcieVersion') required this.cpuPcieVersion,
      required final List<CPUTech?> cpuTech,
      required this.description,
      required this.recommendedPrice,
      required this.performanceLevel})
      : _cpuTech = cpuTech,
        super._();

  factory _$_CPU.fromJson(Map<String, dynamic> json) => _$$_CPUFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final Producers? producer;
  @override
  final int yearOfRelease;
  @override
  final MotherboardSocket? socket;
  @override
  final int countOfCores;
  @override
  final int countOfThreads;
  @override
  final int baseFrequency;
  @override
  final int turboFrequency;
  @override
  final int l3Cache;
  @override
  final CPUGeneration cpuGeneration;
  @override
  final int technicalProcess;
  @override
  final int tdp;
  @override
  final int maxTemperature;
  @override
  final bool embeddedGraphic;
  @override
  @JsonKey(name: 'pcieVersion')
  final CPUPcieVersion? cpuPcieVersion;
  final List<CPUTech?> _cpuTech;
  @override
  List<CPUTech?> get cpuTech {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cpuTech);
  }

  @override
  final String description;
  @override
  final int recommendedPrice;
  @override
  final PerformanceLevel? performanceLevel;

  @override
  String toString() {
    return 'CPU(id: $id, name: $name, producer: $producer, yearOfRelease: $yearOfRelease, socket: $socket, countOfCores: $countOfCores, countOfThreads: $countOfThreads, baseFrequency: $baseFrequency, turboFrequency: $turboFrequency, l3Cache: $l3Cache, cpuGeneration: $cpuGeneration, technicalProcess: $technicalProcess, tdp: $tdp, maxTemperature: $maxTemperature, embeddedGraphic: $embeddedGraphic, cpuPcieVersion: $cpuPcieVersion, cpuTech: $cpuTech, description: $description, recommendedPrice: $recommendedPrice, performanceLevel: $performanceLevel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CPU &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.producer, producer) ||
                other.producer == producer) &&
            (identical(other.yearOfRelease, yearOfRelease) ||
                other.yearOfRelease == yearOfRelease) &&
            (identical(other.socket, socket) || other.socket == socket) &&
            (identical(other.countOfCores, countOfCores) ||
                other.countOfCores == countOfCores) &&
            (identical(other.countOfThreads, countOfThreads) ||
                other.countOfThreads == countOfThreads) &&
            (identical(other.baseFrequency, baseFrequency) ||
                other.baseFrequency == baseFrequency) &&
            (identical(other.turboFrequency, turboFrequency) ||
                other.turboFrequency == turboFrequency) &&
            (identical(other.l3Cache, l3Cache) || other.l3Cache == l3Cache) &&
            (identical(other.cpuGeneration, cpuGeneration) ||
                other.cpuGeneration == cpuGeneration) &&
            (identical(other.technicalProcess, technicalProcess) ||
                other.technicalProcess == technicalProcess) &&
            (identical(other.tdp, tdp) || other.tdp == tdp) &&
            (identical(other.maxTemperature, maxTemperature) ||
                other.maxTemperature == maxTemperature) &&
            (identical(other.embeddedGraphic, embeddedGraphic) ||
                other.embeddedGraphic == embeddedGraphic) &&
            (identical(other.cpuPcieVersion, cpuPcieVersion) ||
                other.cpuPcieVersion == cpuPcieVersion) &&
            const DeepCollectionEquality().equals(other._cpuTech, _cpuTech) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.recommendedPrice, recommendedPrice) ||
                other.recommendedPrice == recommendedPrice) &&
            (identical(other.performanceLevel, performanceLevel) ||
                other.performanceLevel == performanceLevel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        producer,
        yearOfRelease,
        socket,
        countOfCores,
        countOfThreads,
        baseFrequency,
        turboFrequency,
        l3Cache,
        cpuGeneration,
        technicalProcess,
        tdp,
        maxTemperature,
        embeddedGraphic,
        cpuPcieVersion,
        const DeepCollectionEquality().hash(_cpuTech),
        description,
        recommendedPrice,
        performanceLevel
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CPUCopyWith<_$_CPU> get copyWith =>
      __$$_CPUCopyWithImpl<_$_CPU>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CPUToJson(
      this,
    );
  }
}

abstract class _CPU extends CPU {
  const factory _CPU(
      {required final int id,
      required final String name,
      required final Producers? producer,
      required final int yearOfRelease,
      required final MotherboardSocket? socket,
      required final int countOfCores,
      required final int countOfThreads,
      required final int baseFrequency,
      required final int turboFrequency,
      required final int l3Cache,
      required final CPUGeneration cpuGeneration,
      required final int technicalProcess,
      required final int tdp,
      required final int maxTemperature,
      required final bool embeddedGraphic,
      @JsonKey(name: 'pcieVersion')
          required final CPUPcieVersion? cpuPcieVersion,
      required final List<CPUTech?> cpuTech,
      required final String description,
      required final int recommendedPrice,
      required final PerformanceLevel? performanceLevel}) = _$_CPU;
  const _CPU._() : super._();

  factory _CPU.fromJson(Map<String, dynamic> json) = _$_CPU.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  Producers? get producer;
  @override
  int get yearOfRelease;
  @override
  MotherboardSocket? get socket;
  @override
  int get countOfCores;
  @override
  int get countOfThreads;
  @override
  int get baseFrequency;
  @override
  int get turboFrequency;
  @override
  int get l3Cache;
  @override
  CPUGeneration get cpuGeneration;
  @override
  int get technicalProcess;
  @override
  int get tdp;
  @override
  int get maxTemperature;
  @override
  bool get embeddedGraphic;
  @override
  @JsonKey(name: 'pcieVersion')
  CPUPcieVersion? get cpuPcieVersion;
  @override
  List<CPUTech?> get cpuTech;
  @override
  String get description;
  @override
  int get recommendedPrice;
  @override
  PerformanceLevel? get performanceLevel;
  @override
  @JsonKey(ignore: true)
  _$$_CPUCopyWith<_$_CPU> get copyWith => throw _privateConstructorUsedError;
}
