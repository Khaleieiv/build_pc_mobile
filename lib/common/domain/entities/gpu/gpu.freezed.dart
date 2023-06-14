// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gpu.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GPU _$GPUFromJson(Map<String, dynamic> json) {
  return _GPU.fromJson(json);
}

/// @nodoc
mixin _$GPU {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'producer')
  Producers get gpuProducer => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'vendor')
  Producers get gpuVendor => throw _privateConstructorUsedError;
  int get year => throw _privateConstructorUsedError;
  int get technicalProcess => throw _privateConstructorUsedError;
  int get gpuFrequency => throw _privateConstructorUsedError;
  int get memoryAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'memoryType')
  GPUMemoryType get gpuMemoryType => throw _privateConstructorUsedError;
  int get memoryFrequency => throw _privateConstructorUsedError;
  int get bus => throw _privateConstructorUsedError;
  int get tdp => throw _privateConstructorUsedError;
  @JsonKey(name: 'connector')
  List<GPUConnector> get gpuConnector => throw _privateConstructorUsedError;
  @JsonKey(name: 'interfaceType')
  GPUInterfaceType get gpuInterfaceType => throw _privateConstructorUsedError;
  int get length => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  GPUTechnologies get gpuTechnologies => throw _privateConstructorUsedError;
  int get recommendedPrice => throw _privateConstructorUsedError;
  PerformanceLevel get performanceLevel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GPUCopyWith<GPU> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GPUCopyWith<$Res> {
  factory $GPUCopyWith(GPU value, $Res Function(GPU) then) =
      _$GPUCopyWithImpl<$Res, GPU>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'producer') Producers gpuProducer,
      String name,
      @JsonKey(name: 'vendor') Producers gpuVendor,
      int year,
      int technicalProcess,
      int gpuFrequency,
      int memoryAmount,
      @JsonKey(name: 'memoryType') GPUMemoryType gpuMemoryType,
      int memoryFrequency,
      int bus,
      int tdp,
      @JsonKey(name: 'connector') List<GPUConnector> gpuConnector,
      @JsonKey(name: 'interfaceType') GPUInterfaceType gpuInterfaceType,
      int length,
      String description,
      GPUTechnologies gpuTechnologies,
      int recommendedPrice,
      PerformanceLevel performanceLevel});

  $ProducersCopyWith<$Res> get gpuProducer;
  $ProducersCopyWith<$Res> get gpuVendor;
  $GPUMemoryTypeCopyWith<$Res> get gpuMemoryType;
  $GPUInterfaceTypeCopyWith<$Res> get gpuInterfaceType;
  $GPUTechnologiesCopyWith<$Res> get gpuTechnologies;
  $PerformanceLevelCopyWith<$Res> get performanceLevel;
}

/// @nodoc
class _$GPUCopyWithImpl<$Res, $Val extends GPU> implements $GPUCopyWith<$Res> {
  _$GPUCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? gpuProducer = null,
    Object? name = null,
    Object? gpuVendor = null,
    Object? year = null,
    Object? technicalProcess = null,
    Object? gpuFrequency = null,
    Object? memoryAmount = null,
    Object? gpuMemoryType = null,
    Object? memoryFrequency = null,
    Object? bus = null,
    Object? tdp = null,
    Object? gpuConnector = null,
    Object? gpuInterfaceType = null,
    Object? length = null,
    Object? description = null,
    Object? gpuTechnologies = null,
    Object? recommendedPrice = null,
    Object? performanceLevel = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      gpuProducer: null == gpuProducer
          ? _value.gpuProducer
          : gpuProducer // ignore: cast_nullable_to_non_nullable
              as Producers,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gpuVendor: null == gpuVendor
          ? _value.gpuVendor
          : gpuVendor // ignore: cast_nullable_to_non_nullable
              as Producers,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      technicalProcess: null == technicalProcess
          ? _value.technicalProcess
          : technicalProcess // ignore: cast_nullable_to_non_nullable
              as int,
      gpuFrequency: null == gpuFrequency
          ? _value.gpuFrequency
          : gpuFrequency // ignore: cast_nullable_to_non_nullable
              as int,
      memoryAmount: null == memoryAmount
          ? _value.memoryAmount
          : memoryAmount // ignore: cast_nullable_to_non_nullable
              as int,
      gpuMemoryType: null == gpuMemoryType
          ? _value.gpuMemoryType
          : gpuMemoryType // ignore: cast_nullable_to_non_nullable
              as GPUMemoryType,
      memoryFrequency: null == memoryFrequency
          ? _value.memoryFrequency
          : memoryFrequency // ignore: cast_nullable_to_non_nullable
              as int,
      bus: null == bus
          ? _value.bus
          : bus // ignore: cast_nullable_to_non_nullable
              as int,
      tdp: null == tdp
          ? _value.tdp
          : tdp // ignore: cast_nullable_to_non_nullable
              as int,
      gpuConnector: null == gpuConnector
          ? _value.gpuConnector
          : gpuConnector // ignore: cast_nullable_to_non_nullable
              as List<GPUConnector>,
      gpuInterfaceType: null == gpuInterfaceType
          ? _value.gpuInterfaceType
          : gpuInterfaceType // ignore: cast_nullable_to_non_nullable
              as GPUInterfaceType,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      gpuTechnologies: null == gpuTechnologies
          ? _value.gpuTechnologies
          : gpuTechnologies // ignore: cast_nullable_to_non_nullable
              as GPUTechnologies,
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
  $ProducersCopyWith<$Res> get gpuProducer {
    return $ProducersCopyWith<$Res>(_value.gpuProducer, (value) {
      return _then(_value.copyWith(gpuProducer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProducersCopyWith<$Res> get gpuVendor {
    return $ProducersCopyWith<$Res>(_value.gpuVendor, (value) {
      return _then(_value.copyWith(gpuVendor: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GPUMemoryTypeCopyWith<$Res> get gpuMemoryType {
    return $GPUMemoryTypeCopyWith<$Res>(_value.gpuMemoryType, (value) {
      return _then(_value.copyWith(gpuMemoryType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GPUInterfaceTypeCopyWith<$Res> get gpuInterfaceType {
    return $GPUInterfaceTypeCopyWith<$Res>(_value.gpuInterfaceType, (value) {
      return _then(_value.copyWith(gpuInterfaceType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GPUTechnologiesCopyWith<$Res> get gpuTechnologies {
    return $GPUTechnologiesCopyWith<$Res>(_value.gpuTechnologies, (value) {
      return _then(_value.copyWith(gpuTechnologies: value) as $Val);
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
abstract class _$$_GPUCopyWith<$Res> implements $GPUCopyWith<$Res> {
  factory _$$_GPUCopyWith(_$_GPU value, $Res Function(_$_GPU) then) =
      __$$_GPUCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'producer') Producers gpuProducer,
      String name,
      @JsonKey(name: 'vendor') Producers gpuVendor,
      int year,
      int technicalProcess,
      int gpuFrequency,
      int memoryAmount,
      @JsonKey(name: 'memoryType') GPUMemoryType gpuMemoryType,
      int memoryFrequency,
      int bus,
      int tdp,
      @JsonKey(name: 'connector') List<GPUConnector> gpuConnector,
      @JsonKey(name: 'interfaceType') GPUInterfaceType gpuInterfaceType,
      int length,
      String description,
      GPUTechnologies gpuTechnologies,
      int recommendedPrice,
      PerformanceLevel performanceLevel});

  @override
  $ProducersCopyWith<$Res> get gpuProducer;
  @override
  $ProducersCopyWith<$Res> get gpuVendor;
  @override
  $GPUMemoryTypeCopyWith<$Res> get gpuMemoryType;
  @override
  $GPUInterfaceTypeCopyWith<$Res> get gpuInterfaceType;
  @override
  $GPUTechnologiesCopyWith<$Res> get gpuTechnologies;
  @override
  $PerformanceLevelCopyWith<$Res> get performanceLevel;
}

/// @nodoc
class __$$_GPUCopyWithImpl<$Res> extends _$GPUCopyWithImpl<$Res, _$_GPU>
    implements _$$_GPUCopyWith<$Res> {
  __$$_GPUCopyWithImpl(_$_GPU _value, $Res Function(_$_GPU) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? gpuProducer = null,
    Object? name = null,
    Object? gpuVendor = null,
    Object? year = null,
    Object? technicalProcess = null,
    Object? gpuFrequency = null,
    Object? memoryAmount = null,
    Object? gpuMemoryType = null,
    Object? memoryFrequency = null,
    Object? bus = null,
    Object? tdp = null,
    Object? gpuConnector = null,
    Object? gpuInterfaceType = null,
    Object? length = null,
    Object? description = null,
    Object? gpuTechnologies = null,
    Object? recommendedPrice = null,
    Object? performanceLevel = null,
  }) {
    return _then(_$_GPU(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      gpuProducer: null == gpuProducer
          ? _value.gpuProducer
          : gpuProducer // ignore: cast_nullable_to_non_nullable
              as Producers,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gpuVendor: null == gpuVendor
          ? _value.gpuVendor
          : gpuVendor // ignore: cast_nullable_to_non_nullable
              as Producers,
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      technicalProcess: null == technicalProcess
          ? _value.technicalProcess
          : technicalProcess // ignore: cast_nullable_to_non_nullable
              as int,
      gpuFrequency: null == gpuFrequency
          ? _value.gpuFrequency
          : gpuFrequency // ignore: cast_nullable_to_non_nullable
              as int,
      memoryAmount: null == memoryAmount
          ? _value.memoryAmount
          : memoryAmount // ignore: cast_nullable_to_non_nullable
              as int,
      gpuMemoryType: null == gpuMemoryType
          ? _value.gpuMemoryType
          : gpuMemoryType // ignore: cast_nullable_to_non_nullable
              as GPUMemoryType,
      memoryFrequency: null == memoryFrequency
          ? _value.memoryFrequency
          : memoryFrequency // ignore: cast_nullable_to_non_nullable
              as int,
      bus: null == bus
          ? _value.bus
          : bus // ignore: cast_nullable_to_non_nullable
              as int,
      tdp: null == tdp
          ? _value.tdp
          : tdp // ignore: cast_nullable_to_non_nullable
              as int,
      gpuConnector: null == gpuConnector
          ? _value._gpuConnector
          : gpuConnector // ignore: cast_nullable_to_non_nullable
              as List<GPUConnector>,
      gpuInterfaceType: null == gpuInterfaceType
          ? _value.gpuInterfaceType
          : gpuInterfaceType // ignore: cast_nullable_to_non_nullable
              as GPUInterfaceType,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      gpuTechnologies: null == gpuTechnologies
          ? _value.gpuTechnologies
          : gpuTechnologies // ignore: cast_nullable_to_non_nullable
              as GPUTechnologies,
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
class _$_GPU extends _GPU {
  const _$_GPU(
      {required this.id,
      @JsonKey(name: 'producer')
          required this.gpuProducer,
      required this.name,
      @JsonKey(name: 'vendor')
          required this.gpuVendor,
      required this.year,
      required this.technicalProcess,
      required this.gpuFrequency,
      required this.memoryAmount,
      @JsonKey(name: 'memoryType')
          required this.gpuMemoryType,
      required this.memoryFrequency,
      required this.bus,
      required this.tdp,
      @JsonKey(name: 'connector')
          required final List<GPUConnector> gpuConnector,
      @JsonKey(name: 'interfaceType')
          required this.gpuInterfaceType,
      required this.length,
      required this.description,
      required this.gpuTechnologies,
      required this.recommendedPrice,
      required this.performanceLevel})
      : _gpuConnector = gpuConnector,
        super._();

  factory _$_GPU.fromJson(Map<String, dynamic> json) => _$$_GPUFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'producer')
  final Producers gpuProducer;
  @override
  final String name;
  @override
  @JsonKey(name: 'vendor')
  final Producers gpuVendor;
  @override
  final int year;
  @override
  final int technicalProcess;
  @override
  final int gpuFrequency;
  @override
  final int memoryAmount;
  @override
  @JsonKey(name: 'memoryType')
  final GPUMemoryType gpuMemoryType;
  @override
  final int memoryFrequency;
  @override
  final int bus;
  @override
  final int tdp;
  final List<GPUConnector> _gpuConnector;
  @override
  @JsonKey(name: 'connector')
  List<GPUConnector> get gpuConnector {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gpuConnector);
  }

  @override
  @JsonKey(name: 'interfaceType')
  final GPUInterfaceType gpuInterfaceType;
  @override
  final int length;
  @override
  final String description;
  @override
  final GPUTechnologies gpuTechnologies;
  @override
  final int recommendedPrice;
  @override
  final PerformanceLevel performanceLevel;

  @override
  String toString() {
    return 'GPU(id: $id, gpuProducer: $gpuProducer, name: $name, gpuVendor: $gpuVendor, year: $year, technicalProcess: $technicalProcess, gpuFrequency: $gpuFrequency, memoryAmount: $memoryAmount, gpuMemoryType: $gpuMemoryType, memoryFrequency: $memoryFrequency, bus: $bus, tdp: $tdp, gpuConnector: $gpuConnector, gpuInterfaceType: $gpuInterfaceType, length: $length, description: $description, gpuTechnologies: $gpuTechnologies, recommendedPrice: $recommendedPrice, performanceLevel: $performanceLevel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GPU &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.gpuProducer, gpuProducer) ||
                other.gpuProducer == gpuProducer) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.gpuVendor, gpuVendor) ||
                other.gpuVendor == gpuVendor) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.technicalProcess, technicalProcess) ||
                other.technicalProcess == technicalProcess) &&
            (identical(other.gpuFrequency, gpuFrequency) ||
                other.gpuFrequency == gpuFrequency) &&
            (identical(other.memoryAmount, memoryAmount) ||
                other.memoryAmount == memoryAmount) &&
            (identical(other.gpuMemoryType, gpuMemoryType) ||
                other.gpuMemoryType == gpuMemoryType) &&
            (identical(other.memoryFrequency, memoryFrequency) ||
                other.memoryFrequency == memoryFrequency) &&
            (identical(other.bus, bus) || other.bus == bus) &&
            (identical(other.tdp, tdp) || other.tdp == tdp) &&
            const DeepCollectionEquality()
                .equals(other._gpuConnector, _gpuConnector) &&
            (identical(other.gpuInterfaceType, gpuInterfaceType) ||
                other.gpuInterfaceType == gpuInterfaceType) &&
            (identical(other.length, length) || other.length == length) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.gpuTechnologies, gpuTechnologies) ||
                other.gpuTechnologies == gpuTechnologies) &&
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
        gpuProducer,
        name,
        gpuVendor,
        year,
        technicalProcess,
        gpuFrequency,
        memoryAmount,
        gpuMemoryType,
        memoryFrequency,
        bus,
        tdp,
        const DeepCollectionEquality().hash(_gpuConnector),
        gpuInterfaceType,
        length,
        description,
        gpuTechnologies,
        recommendedPrice,
        performanceLevel
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GPUCopyWith<_$_GPU> get copyWith =>
      __$$_GPUCopyWithImpl<_$_GPU>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GPUToJson(
      this,
    );
  }
}

abstract class _GPU extends GPU {
  const factory _GPU(
      {required final int id,
      @JsonKey(name: 'producer')
          required final Producers gpuProducer,
      required final String name,
      @JsonKey(name: 'vendor')
          required final Producers gpuVendor,
      required final int year,
      required final int technicalProcess,
      required final int gpuFrequency,
      required final int memoryAmount,
      @JsonKey(name: 'memoryType')
          required final GPUMemoryType gpuMemoryType,
      required final int memoryFrequency,
      required final int bus,
      required final int tdp,
      @JsonKey(name: 'connector')
          required final List<GPUConnector> gpuConnector,
      @JsonKey(name: 'interfaceType')
          required final GPUInterfaceType gpuInterfaceType,
      required final int length,
      required final String description,
      required final GPUTechnologies gpuTechnologies,
      required final int recommendedPrice,
      required final PerformanceLevel performanceLevel}) = _$_GPU;
  const _GPU._() : super._();

  factory _GPU.fromJson(Map<String, dynamic> json) = _$_GPU.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'producer')
  Producers get gpuProducer;
  @override
  String get name;
  @override
  @JsonKey(name: 'vendor')
  Producers get gpuVendor;
  @override
  int get year;
  @override
  int get technicalProcess;
  @override
  int get gpuFrequency;
  @override
  int get memoryAmount;
  @override
  @JsonKey(name: 'memoryType')
  GPUMemoryType get gpuMemoryType;
  @override
  int get memoryFrequency;
  @override
  int get bus;
  @override
  int get tdp;
  @override
  @JsonKey(name: 'connector')
  List<GPUConnector> get gpuConnector;
  @override
  @JsonKey(name: 'interfaceType')
  GPUInterfaceType get gpuInterfaceType;
  @override
  int get length;
  @override
  String get description;
  @override
  GPUTechnologies get gpuTechnologies;
  @override
  int get recommendedPrice;
  @override
  PerformanceLevel get performanceLevel;
  @override
  @JsonKey(ignore: true)
  _$$_GPUCopyWith<_$_GPU> get copyWith => throw _privateConstructorUsedError;
}
