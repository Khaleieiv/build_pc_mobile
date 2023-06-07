// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'power_supply.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PowerSupply _$PowerSupplyFromJson(Map<String, dynamic> json) {
  return _PowerSupply.fromJson(json);
}

/// @nodoc
mixin _$PowerSupply {
  int get id => throw _privateConstructorUsedError;
  Producers get powerSupplyProducer => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get power => throw _privateConstructorUsedError;
  FormFactor get formFactor => throw _privateConstructorUsedError;
  PerformanceLevel? get performanceLevel => throw _privateConstructorUsedError;
  bool get pfcModule => throw _privateConstructorUsedError;
  bool get modularConnection => throw _privateConstructorUsedError;
  List<PowerSupplyProtectionFunctions> get powerSupplyProtectionFunctions =>
      throw _privateConstructorUsedError;
  int get cpu_4pin => throw _privateConstructorUsedError;
  int get cpu_4plus4pin => throw _privateConstructorUsedError;
  int get cpu_8pin => throw _privateConstructorUsedError;
  int get pcie_6plus2pin => throw _privateConstructorUsedError;
  int get pcie_8pin => throw _privateConstructorUsedError;
  int get pcie_5_16pin => throw _privateConstructorUsedError;
  int get sata =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  int get count_of_12_v_lines => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get recommendedPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PowerSupplyCopyWith<PowerSupply> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PowerSupplyCopyWith<$Res> {
  factory $PowerSupplyCopyWith(
          PowerSupply value, $Res Function(PowerSupply) then) =
      _$PowerSupplyCopyWithImpl<$Res, PowerSupply>;
  @useResult
  $Res call(
      {int id,
      Producers powerSupplyProducer,
      String name,
      int power,
      FormFactor formFactor,
      PerformanceLevel? performanceLevel,
      bool pfcModule,
      bool modularConnection,
      List<PowerSupplyProtectionFunctions> powerSupplyProtectionFunctions,
      int cpu_4pin,
      int cpu_4plus4pin,
      int cpu_8pin,
      int pcie_6plus2pin,
      int pcie_8pin,
      int pcie_5_16pin,
      int sata,
      int count_of_12_v_lines,
      String description,
      int recommendedPrice});

  $ProducersCopyWith<$Res> get powerSupplyProducer;
  $FormFactorCopyWith<$Res> get formFactor;
  $PerformanceLevelCopyWith<$Res>? get performanceLevel;
}

/// @nodoc
class _$PowerSupplyCopyWithImpl<$Res, $Val extends PowerSupply>
    implements $PowerSupplyCopyWith<$Res> {
  _$PowerSupplyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? powerSupplyProducer = null,
    Object? name = null,
    Object? power = null,
    Object? formFactor = null,
    Object? performanceLevel = freezed,
    Object? pfcModule = null,
    Object? modularConnection = null,
    Object? powerSupplyProtectionFunctions = null,
    Object? cpu_4pin = null,
    Object? cpu_4plus4pin = null,
    Object? cpu_8pin = null,
    Object? pcie_6plus2pin = null,
    Object? pcie_8pin = null,
    Object? pcie_5_16pin = null,
    Object? sata = null,
    Object? count_of_12_v_lines = null,
    Object? description = null,
    Object? recommendedPrice = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      powerSupplyProducer: null == powerSupplyProducer
          ? _value.powerSupplyProducer
          : powerSupplyProducer // ignore: cast_nullable_to_non_nullable
              as Producers,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      power: null == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as int,
      formFactor: null == formFactor
          ? _value.formFactor
          : formFactor // ignore: cast_nullable_to_non_nullable
              as FormFactor,
      performanceLevel: freezed == performanceLevel
          ? _value.performanceLevel
          : performanceLevel // ignore: cast_nullable_to_non_nullable
              as PerformanceLevel?,
      pfcModule: null == pfcModule
          ? _value.pfcModule
          : pfcModule // ignore: cast_nullable_to_non_nullable
              as bool,
      modularConnection: null == modularConnection
          ? _value.modularConnection
          : modularConnection // ignore: cast_nullable_to_non_nullable
              as bool,
      powerSupplyProtectionFunctions: null == powerSupplyProtectionFunctions
          ? _value.powerSupplyProtectionFunctions
          : powerSupplyProtectionFunctions // ignore: cast_nullable_to_non_nullable
              as List<PowerSupplyProtectionFunctions>,
      cpu_4pin: null == cpu_4pin
          ? _value.cpu_4pin
          : cpu_4pin // ignore: cast_nullable_to_non_nullable
              as int,
      cpu_4plus4pin: null == cpu_4plus4pin
          ? _value.cpu_4plus4pin
          : cpu_4plus4pin // ignore: cast_nullable_to_non_nullable
              as int,
      cpu_8pin: null == cpu_8pin
          ? _value.cpu_8pin
          : cpu_8pin // ignore: cast_nullable_to_non_nullable
              as int,
      pcie_6plus2pin: null == pcie_6plus2pin
          ? _value.pcie_6plus2pin
          : pcie_6plus2pin // ignore: cast_nullable_to_non_nullable
              as int,
      pcie_8pin: null == pcie_8pin
          ? _value.pcie_8pin
          : pcie_8pin // ignore: cast_nullable_to_non_nullable
              as int,
      pcie_5_16pin: null == pcie_5_16pin
          ? _value.pcie_5_16pin
          : pcie_5_16pin // ignore: cast_nullable_to_non_nullable
              as int,
      sata: null == sata
          ? _value.sata
          : sata // ignore: cast_nullable_to_non_nullable
              as int,
      count_of_12_v_lines: null == count_of_12_v_lines
          ? _value.count_of_12_v_lines
          : count_of_12_v_lines // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      recommendedPrice: null == recommendedPrice
          ? _value.recommendedPrice
          : recommendedPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProducersCopyWith<$Res> get powerSupplyProducer {
    return $ProducersCopyWith<$Res>(_value.powerSupplyProducer, (value) {
      return _then(_value.copyWith(powerSupplyProducer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FormFactorCopyWith<$Res> get formFactor {
    return $FormFactorCopyWith<$Res>(_value.formFactor, (value) {
      return _then(_value.copyWith(formFactor: value) as $Val);
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
abstract class _$$_PowerSupplyCopyWith<$Res>
    implements $PowerSupplyCopyWith<$Res> {
  factory _$$_PowerSupplyCopyWith(
          _$_PowerSupply value, $Res Function(_$_PowerSupply) then) =
      __$$_PowerSupplyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      Producers powerSupplyProducer,
      String name,
      int power,
      FormFactor formFactor,
      PerformanceLevel? performanceLevel,
      bool pfcModule,
      bool modularConnection,
      List<PowerSupplyProtectionFunctions> powerSupplyProtectionFunctions,
      int cpu_4pin,
      int cpu_4plus4pin,
      int cpu_8pin,
      int pcie_6plus2pin,
      int pcie_8pin,
      int pcie_5_16pin,
      int sata,
      int count_of_12_v_lines,
      String description,
      int recommendedPrice});

  @override
  $ProducersCopyWith<$Res> get powerSupplyProducer;
  @override
  $FormFactorCopyWith<$Res> get formFactor;
  @override
  $PerformanceLevelCopyWith<$Res>? get performanceLevel;
}

/// @nodoc
class __$$_PowerSupplyCopyWithImpl<$Res>
    extends _$PowerSupplyCopyWithImpl<$Res, _$_PowerSupply>
    implements _$$_PowerSupplyCopyWith<$Res> {
  __$$_PowerSupplyCopyWithImpl(
      _$_PowerSupply _value, $Res Function(_$_PowerSupply) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? powerSupplyProducer = null,
    Object? name = null,
    Object? power = null,
    Object? formFactor = null,
    Object? performanceLevel = freezed,
    Object? pfcModule = null,
    Object? modularConnection = null,
    Object? powerSupplyProtectionFunctions = null,
    Object? cpu_4pin = null,
    Object? cpu_4plus4pin = null,
    Object? cpu_8pin = null,
    Object? pcie_6plus2pin = null,
    Object? pcie_8pin = null,
    Object? pcie_5_16pin = null,
    Object? sata = null,
    Object? count_of_12_v_lines = null,
    Object? description = null,
    Object? recommendedPrice = null,
  }) {
    return _then(_$_PowerSupply(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      powerSupplyProducer: null == powerSupplyProducer
          ? _value.powerSupplyProducer
          : powerSupplyProducer // ignore: cast_nullable_to_non_nullable
              as Producers,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      power: null == power
          ? _value.power
          : power // ignore: cast_nullable_to_non_nullable
              as int,
      formFactor: null == formFactor
          ? _value.formFactor
          : formFactor // ignore: cast_nullable_to_non_nullable
              as FormFactor,
      performanceLevel: freezed == performanceLevel
          ? _value.performanceLevel
          : performanceLevel // ignore: cast_nullable_to_non_nullable
              as PerformanceLevel?,
      pfcModule: null == pfcModule
          ? _value.pfcModule
          : pfcModule // ignore: cast_nullable_to_non_nullable
              as bool,
      modularConnection: null == modularConnection
          ? _value.modularConnection
          : modularConnection // ignore: cast_nullable_to_non_nullable
              as bool,
      powerSupplyProtectionFunctions: null == powerSupplyProtectionFunctions
          ? _value._powerSupplyProtectionFunctions
          : powerSupplyProtectionFunctions // ignore: cast_nullable_to_non_nullable
              as List<PowerSupplyProtectionFunctions>,
      cpu_4pin: null == cpu_4pin
          ? _value.cpu_4pin
          : cpu_4pin // ignore: cast_nullable_to_non_nullable
              as int,
      cpu_4plus4pin: null == cpu_4plus4pin
          ? _value.cpu_4plus4pin
          : cpu_4plus4pin // ignore: cast_nullable_to_non_nullable
              as int,
      cpu_8pin: null == cpu_8pin
          ? _value.cpu_8pin
          : cpu_8pin // ignore: cast_nullable_to_non_nullable
              as int,
      pcie_6plus2pin: null == pcie_6plus2pin
          ? _value.pcie_6plus2pin
          : pcie_6plus2pin // ignore: cast_nullable_to_non_nullable
              as int,
      pcie_8pin: null == pcie_8pin
          ? _value.pcie_8pin
          : pcie_8pin // ignore: cast_nullable_to_non_nullable
              as int,
      pcie_5_16pin: null == pcie_5_16pin
          ? _value.pcie_5_16pin
          : pcie_5_16pin // ignore: cast_nullable_to_non_nullable
              as int,
      sata: null == sata
          ? _value.sata
          : sata // ignore: cast_nullable_to_non_nullable
              as int,
      count_of_12_v_lines: null == count_of_12_v_lines
          ? _value.count_of_12_v_lines
          : count_of_12_v_lines // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      recommendedPrice: null == recommendedPrice
          ? _value.recommendedPrice
          : recommendedPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PowerSupply extends _PowerSupply {
  const _$_PowerSupply(
      {required this.id,
      required this.powerSupplyProducer,
      required this.name,
      required this.power,
      required this.formFactor,
      required this.performanceLevel,
      required this.pfcModule,
      required this.modularConnection,
      required final List<PowerSupplyProtectionFunctions>
          powerSupplyProtectionFunctions,
      required this.cpu_4pin,
      required this.cpu_4plus4pin,
      required this.cpu_8pin,
      required this.pcie_6plus2pin,
      required this.pcie_8pin,
      required this.pcie_5_16pin,
      required this.sata,
      required this.count_of_12_v_lines,
      required this.description,
      required this.recommendedPrice})
      : _powerSupplyProtectionFunctions = powerSupplyProtectionFunctions,
        super._();

  factory _$_PowerSupply.fromJson(Map<String, dynamic> json) =>
      _$$_PowerSupplyFromJson(json);

  @override
  final int id;
  @override
  final Producers powerSupplyProducer;
  @override
  final String name;
  @override
  final int power;
  @override
  final FormFactor formFactor;
  @override
  final PerformanceLevel? performanceLevel;
  @override
  final bool pfcModule;
  @override
  final bool modularConnection;
  final List<PowerSupplyProtectionFunctions> _powerSupplyProtectionFunctions;
  @override
  List<PowerSupplyProtectionFunctions> get powerSupplyProtectionFunctions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_powerSupplyProtectionFunctions);
  }

  @override
  final int cpu_4pin;
  @override
  final int cpu_4plus4pin;
  @override
  final int cpu_8pin;
  @override
  final int pcie_6plus2pin;
  @override
  final int pcie_8pin;
  @override
  final int pcie_5_16pin;
  @override
  final int sata;
// ignore: non_constant_identifier_names
  @override
  final int count_of_12_v_lines;
  @override
  final String description;
  @override
  final int recommendedPrice;

  @override
  String toString() {
    return 'PowerSupply(id: $id, powerSupplyProducer: $powerSupplyProducer, name: $name, power: $power, formFactor: $formFactor, performanceLevel: $performanceLevel, pfcModule: $pfcModule, modularConnection: $modularConnection, powerSupplyProtectionFunctions: $powerSupplyProtectionFunctions, cpu_4pin: $cpu_4pin, cpu_4plus4pin: $cpu_4plus4pin, cpu_8pin: $cpu_8pin, pcie_6plus2pin: $pcie_6plus2pin, pcie_8pin: $pcie_8pin, pcie_5_16pin: $pcie_5_16pin, sata: $sata, count_of_12_v_lines: $count_of_12_v_lines, description: $description, recommendedPrice: $recommendedPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PowerSupply &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.powerSupplyProducer, powerSupplyProducer) ||
                other.powerSupplyProducer == powerSupplyProducer) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.power, power) || other.power == power) &&
            (identical(other.formFactor, formFactor) ||
                other.formFactor == formFactor) &&
            (identical(other.performanceLevel, performanceLevel) ||
                other.performanceLevel == performanceLevel) &&
            (identical(other.pfcModule, pfcModule) ||
                other.pfcModule == pfcModule) &&
            (identical(other.modularConnection, modularConnection) ||
                other.modularConnection == modularConnection) &&
            const DeepCollectionEquality().equals(
                other._powerSupplyProtectionFunctions,
                _powerSupplyProtectionFunctions) &&
            (identical(other.cpu_4pin, cpu_4pin) ||
                other.cpu_4pin == cpu_4pin) &&
            (identical(other.cpu_4plus4pin, cpu_4plus4pin) ||
                other.cpu_4plus4pin == cpu_4plus4pin) &&
            (identical(other.cpu_8pin, cpu_8pin) ||
                other.cpu_8pin == cpu_8pin) &&
            (identical(other.pcie_6plus2pin, pcie_6plus2pin) ||
                other.pcie_6plus2pin == pcie_6plus2pin) &&
            (identical(other.pcie_8pin, pcie_8pin) ||
                other.pcie_8pin == pcie_8pin) &&
            (identical(other.pcie_5_16pin, pcie_5_16pin) ||
                other.pcie_5_16pin == pcie_5_16pin) &&
            (identical(other.sata, sata) || other.sata == sata) &&
            (identical(other.count_of_12_v_lines, count_of_12_v_lines) ||
                other.count_of_12_v_lines == count_of_12_v_lines) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.recommendedPrice, recommendedPrice) ||
                other.recommendedPrice == recommendedPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        powerSupplyProducer,
        name,
        power,
        formFactor,
        performanceLevel,
        pfcModule,
        modularConnection,
        const DeepCollectionEquality().hash(_powerSupplyProtectionFunctions),
        cpu_4pin,
        cpu_4plus4pin,
        cpu_8pin,
        pcie_6plus2pin,
        pcie_8pin,
        pcie_5_16pin,
        sata,
        count_of_12_v_lines,
        description,
        recommendedPrice
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PowerSupplyCopyWith<_$_PowerSupply> get copyWith =>
      __$$_PowerSupplyCopyWithImpl<_$_PowerSupply>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PowerSupplyToJson(
      this,
    );
  }
}

abstract class _PowerSupply extends PowerSupply {
  const factory _PowerSupply(
      {required final int id,
      required final Producers powerSupplyProducer,
      required final String name,
      required final int power,
      required final FormFactor formFactor,
      required final PerformanceLevel? performanceLevel,
      required final bool pfcModule,
      required final bool modularConnection,
      required final List<PowerSupplyProtectionFunctions>
          powerSupplyProtectionFunctions,
      required final int cpu_4pin,
      required final int cpu_4plus4pin,
      required final int cpu_8pin,
      required final int pcie_6plus2pin,
      required final int pcie_8pin,
      required final int pcie_5_16pin,
      required final int sata,
      required final int count_of_12_v_lines,
      required final String description,
      required final int recommendedPrice}) = _$_PowerSupply;
  const _PowerSupply._() : super._();

  factory _PowerSupply.fromJson(Map<String, dynamic> json) =
      _$_PowerSupply.fromJson;

  @override
  int get id;
  @override
  Producers get powerSupplyProducer;
  @override
  String get name;
  @override
  int get power;
  @override
  FormFactor get formFactor;
  @override
  PerformanceLevel? get performanceLevel;
  @override
  bool get pfcModule;
  @override
  bool get modularConnection;
  @override
  List<PowerSupplyProtectionFunctions> get powerSupplyProtectionFunctions;
  @override
  int get cpu_4pin;
  @override
  int get cpu_4plus4pin;
  @override
  int get cpu_8pin;
  @override
  int get pcie_6plus2pin;
  @override
  int get pcie_8pin;
  @override
  int get pcie_5_16pin;
  @override
  int get sata;
  @override // ignore: non_constant_identifier_names
  int get count_of_12_v_lines;
  @override
  String get description;
  @override
  int get recommendedPrice;
  @override
  @JsonKey(ignore: true)
  _$$_PowerSupplyCopyWith<_$_PowerSupply> get copyWith =>
      throw _privateConstructorUsedError;
}
