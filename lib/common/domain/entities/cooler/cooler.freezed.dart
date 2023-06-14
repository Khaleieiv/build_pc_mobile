// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cooler.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Cooler _$CoolerFromJson(Map<String, dynamic> json) {
  return _Cooler.fromJson(json);
}

/// @nodoc
mixin _$Cooler {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'producer')
  Producers get coolerProducer => throw _privateConstructorUsedError;
  @JsonKey(name: 'socket')
  List<CoolerSocket> get coolerSocket => throw _privateConstructorUsedError;
  @JsonKey(name: 'material')
  CoolerMaterial get coolerMaterial => throw _privateConstructorUsedError;
  int get maxTdp => throw _privateConstructorUsedError;
  int get thermalTubes => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get recommendedPrice => throw _privateConstructorUsedError;
  PerformanceLevel? get performanceLevel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoolerCopyWith<Cooler> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoolerCopyWith<$Res> {
  factory $CoolerCopyWith(Cooler value, $Res Function(Cooler) then) =
      _$CoolerCopyWithImpl<$Res, Cooler>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'producer') Producers coolerProducer,
      @JsonKey(name: 'socket') List<CoolerSocket> coolerSocket,
      @JsonKey(name: 'material') CoolerMaterial coolerMaterial,
      int maxTdp,
      int thermalTubes,
      String description,
      int recommendedPrice,
      PerformanceLevel? performanceLevel});

  $ProducersCopyWith<$Res> get coolerProducer;
  $CoolerMaterialCopyWith<$Res> get coolerMaterial;
  $PerformanceLevelCopyWith<$Res>? get performanceLevel;
}

/// @nodoc
class _$CoolerCopyWithImpl<$Res, $Val extends Cooler>
    implements $CoolerCopyWith<$Res> {
  _$CoolerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? coolerProducer = null,
    Object? coolerSocket = null,
    Object? coolerMaterial = null,
    Object? maxTdp = null,
    Object? thermalTubes = null,
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
      coolerProducer: null == coolerProducer
          ? _value.coolerProducer
          : coolerProducer // ignore: cast_nullable_to_non_nullable
              as Producers,
      coolerSocket: null == coolerSocket
          ? _value.coolerSocket
          : coolerSocket // ignore: cast_nullable_to_non_nullable
              as List<CoolerSocket>,
      coolerMaterial: null == coolerMaterial
          ? _value.coolerMaterial
          : coolerMaterial // ignore: cast_nullable_to_non_nullable
              as CoolerMaterial,
      maxTdp: null == maxTdp
          ? _value.maxTdp
          : maxTdp // ignore: cast_nullable_to_non_nullable
              as int,
      thermalTubes: null == thermalTubes
          ? _value.thermalTubes
          : thermalTubes // ignore: cast_nullable_to_non_nullable
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
  $ProducersCopyWith<$Res> get coolerProducer {
    return $ProducersCopyWith<$Res>(_value.coolerProducer, (value) {
      return _then(_value.copyWith(coolerProducer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CoolerMaterialCopyWith<$Res> get coolerMaterial {
    return $CoolerMaterialCopyWith<$Res>(_value.coolerMaterial, (value) {
      return _then(_value.copyWith(coolerMaterial: value) as $Val);
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
abstract class _$$_CoolerCopyWith<$Res> implements $CoolerCopyWith<$Res> {
  factory _$$_CoolerCopyWith(_$_Cooler value, $Res Function(_$_Cooler) then) =
      __$$_CoolerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'producer') Producers coolerProducer,
      @JsonKey(name: 'socket') List<CoolerSocket> coolerSocket,
      @JsonKey(name: 'material') CoolerMaterial coolerMaterial,
      int maxTdp,
      int thermalTubes,
      String description,
      int recommendedPrice,
      PerformanceLevel? performanceLevel});

  @override
  $ProducersCopyWith<$Res> get coolerProducer;
  @override
  $CoolerMaterialCopyWith<$Res> get coolerMaterial;
  @override
  $PerformanceLevelCopyWith<$Res>? get performanceLevel;
}

/// @nodoc
class __$$_CoolerCopyWithImpl<$Res>
    extends _$CoolerCopyWithImpl<$Res, _$_Cooler>
    implements _$$_CoolerCopyWith<$Res> {
  __$$_CoolerCopyWithImpl(_$_Cooler _value, $Res Function(_$_Cooler) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? coolerProducer = null,
    Object? coolerSocket = null,
    Object? coolerMaterial = null,
    Object? maxTdp = null,
    Object? thermalTubes = null,
    Object? description = null,
    Object? recommendedPrice = null,
    Object? performanceLevel = freezed,
  }) {
    return _then(_$_Cooler(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coolerProducer: null == coolerProducer
          ? _value.coolerProducer
          : coolerProducer // ignore: cast_nullable_to_non_nullable
              as Producers,
      coolerSocket: null == coolerSocket
          ? _value._coolerSocket
          : coolerSocket // ignore: cast_nullable_to_non_nullable
              as List<CoolerSocket>,
      coolerMaterial: null == coolerMaterial
          ? _value.coolerMaterial
          : coolerMaterial // ignore: cast_nullable_to_non_nullable
              as CoolerMaterial,
      maxTdp: null == maxTdp
          ? _value.maxTdp
          : maxTdp // ignore: cast_nullable_to_non_nullable
              as int,
      thermalTubes: null == thermalTubes
          ? _value.thermalTubes
          : thermalTubes // ignore: cast_nullable_to_non_nullable
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
class _$_Cooler extends _Cooler {
  const _$_Cooler(
      {required this.id,
      required this.name,
      @JsonKey(name: 'producer') required this.coolerProducer,
      @JsonKey(name: 'socket') required final List<CoolerSocket> coolerSocket,
      @JsonKey(name: 'material') required this.coolerMaterial,
      required this.maxTdp,
      required this.thermalTubes,
      required this.description,
      required this.recommendedPrice,
      required this.performanceLevel})
      : _coolerSocket = coolerSocket,
        super._();

  factory _$_Cooler.fromJson(Map<String, dynamic> json) =>
      _$$_CoolerFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey(name: 'producer')
  final Producers coolerProducer;
  final List<CoolerSocket> _coolerSocket;
  @override
  @JsonKey(name: 'socket')
  List<CoolerSocket> get coolerSocket {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coolerSocket);
  }

  @override
  @JsonKey(name: 'material')
  final CoolerMaterial coolerMaterial;
  @override
  final int maxTdp;
  @override
  final int thermalTubes;
  @override
  final String description;
  @override
  final int recommendedPrice;
  @override
  final PerformanceLevel? performanceLevel;

  @override
  String toString() {
    return 'Cooler(id: $id, name: $name, coolerProducer: $coolerProducer, coolerSocket: $coolerSocket, coolerMaterial: $coolerMaterial, maxTdp: $maxTdp, thermalTubes: $thermalTubes, description: $description, recommendedPrice: $recommendedPrice, performanceLevel: $performanceLevel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cooler &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.coolerProducer, coolerProducer) ||
                other.coolerProducer == coolerProducer) &&
            const DeepCollectionEquality()
                .equals(other._coolerSocket, _coolerSocket) &&
            (identical(other.coolerMaterial, coolerMaterial) ||
                other.coolerMaterial == coolerMaterial) &&
            (identical(other.maxTdp, maxTdp) || other.maxTdp == maxTdp) &&
            (identical(other.thermalTubes, thermalTubes) ||
                other.thermalTubes == thermalTubes) &&
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
      coolerProducer,
      const DeepCollectionEquality().hash(_coolerSocket),
      coolerMaterial,
      maxTdp,
      thermalTubes,
      description,
      recommendedPrice,
      performanceLevel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoolerCopyWith<_$_Cooler> get copyWith =>
      __$$_CoolerCopyWithImpl<_$_Cooler>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoolerToJson(
      this,
    );
  }
}

abstract class _Cooler extends Cooler {
  const factory _Cooler(
      {required final int id,
      required final String name,
      @JsonKey(name: 'producer') required final Producers coolerProducer,
      @JsonKey(name: 'socket') required final List<CoolerSocket> coolerSocket,
      @JsonKey(name: 'material') required final CoolerMaterial coolerMaterial,
      required final int maxTdp,
      required final int thermalTubes,
      required final String description,
      required final int recommendedPrice,
      required final PerformanceLevel? performanceLevel}) = _$_Cooler;
  const _Cooler._() : super._();

  factory _Cooler.fromJson(Map<String, dynamic> json) = _$_Cooler.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'producer')
  Producers get coolerProducer;
  @override
  @JsonKey(name: 'socket')
  List<CoolerSocket> get coolerSocket;
  @override
  @JsonKey(name: 'material')
  CoolerMaterial get coolerMaterial;
  @override
  int get maxTdp;
  @override
  int get thermalTubes;
  @override
  String get description;
  @override
  int get recommendedPrice;
  @override
  PerformanceLevel? get performanceLevel;
  @override
  @JsonKey(ignore: true)
  _$$_CoolerCopyWith<_$_Cooler> get copyWith =>
      throw _privateConstructorUsedError;
}
