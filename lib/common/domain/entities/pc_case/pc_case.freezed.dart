// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pc_case.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PcCase _$PcCaseFromJson(Map<String, dynamic> json) {
  return _PcCase.fromJson(json);
}

/// @nodoc
mixin _$PcCase {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  CaseProducer get caseProducer => throw _privateConstructorUsedError;
  CaseSize get caseSize => throw _privateConstructorUsedError;
  List<FormFactor> get formFactor => throw _privateConstructorUsedError;
  CasePowerSupplyLocation get casePowerSupplyLocation =>
      throw _privateConstructorUsedError;
  bool get fansIncluded => throw _privateConstructorUsedError;
  int get usb_3_2 => throw _privateConstructorUsedError;
  int get usb_3_0 => throw _privateConstructorUsedError;
  int get usb_2_0 => throw _privateConstructorUsedError;
  List<CaseDesignFeatures> get designFeatures =>
      throw _privateConstructorUsedError;
  int get maxLengthOfGraphicCard => throw _privateConstructorUsedError;
  int get powerSupplyFormFactor => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get recommendedPrice => throw _privateConstructorUsedError;
  PerformanceLevel get performanceLevel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PcCaseCopyWith<PcCase> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PcCaseCopyWith<$Res> {
  factory $PcCaseCopyWith(PcCase value, $Res Function(PcCase) then) =
      _$PcCaseCopyWithImpl<$Res, PcCase>;
  @useResult
  $Res call(
      {int id,
      String name,
      CaseProducer caseProducer,
      CaseSize caseSize,
      List<FormFactor> formFactor,
      CasePowerSupplyLocation casePowerSupplyLocation,
      bool fansIncluded,
      int usb_3_2,
      int usb_3_0,
      int usb_2_0,
      List<CaseDesignFeatures> designFeatures,
      int maxLengthOfGraphicCard,
      int powerSupplyFormFactor,
      String description,
      int recommendedPrice,
      PerformanceLevel performanceLevel});

  $CaseProducerCopyWith<$Res> get caseProducer;
  $CaseSizeCopyWith<$Res> get caseSize;
  $CasePowerSupplyLocationCopyWith<$Res> get casePowerSupplyLocation;
  $PerformanceLevelCopyWith<$Res> get performanceLevel;
}

/// @nodoc
class _$PcCaseCopyWithImpl<$Res, $Val extends PcCase>
    implements $PcCaseCopyWith<$Res> {
  _$PcCaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? caseProducer = null,
    Object? caseSize = null,
    Object? formFactor = null,
    Object? casePowerSupplyLocation = null,
    Object? fansIncluded = null,
    Object? usb_3_2 = null,
    Object? usb_3_0 = null,
    Object? usb_2_0 = null,
    Object? designFeatures = null,
    Object? maxLengthOfGraphicCard = null,
    Object? powerSupplyFormFactor = null,
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
      caseProducer: null == caseProducer
          ? _value.caseProducer
          : caseProducer // ignore: cast_nullable_to_non_nullable
              as CaseProducer,
      caseSize: null == caseSize
          ? _value.caseSize
          : caseSize // ignore: cast_nullable_to_non_nullable
              as CaseSize,
      formFactor: null == formFactor
          ? _value.formFactor
          : formFactor // ignore: cast_nullable_to_non_nullable
              as List<FormFactor>,
      casePowerSupplyLocation: null == casePowerSupplyLocation
          ? _value.casePowerSupplyLocation
          : casePowerSupplyLocation // ignore: cast_nullable_to_non_nullable
              as CasePowerSupplyLocation,
      fansIncluded: null == fansIncluded
          ? _value.fansIncluded
          : fansIncluded // ignore: cast_nullable_to_non_nullable
              as bool,
      usb_3_2: null == usb_3_2
          ? _value.usb_3_2
          : usb_3_2 // ignore: cast_nullable_to_non_nullable
              as int,
      usb_3_0: null == usb_3_0
          ? _value.usb_3_0
          : usb_3_0 // ignore: cast_nullable_to_non_nullable
              as int,
      usb_2_0: null == usb_2_0
          ? _value.usb_2_0
          : usb_2_0 // ignore: cast_nullable_to_non_nullable
              as int,
      designFeatures: null == designFeatures
          ? _value.designFeatures
          : designFeatures // ignore: cast_nullable_to_non_nullable
              as List<CaseDesignFeatures>,
      maxLengthOfGraphicCard: null == maxLengthOfGraphicCard
          ? _value.maxLengthOfGraphicCard
          : maxLengthOfGraphicCard // ignore: cast_nullable_to_non_nullable
              as int,
      powerSupplyFormFactor: null == powerSupplyFormFactor
          ? _value.powerSupplyFormFactor
          : powerSupplyFormFactor // ignore: cast_nullable_to_non_nullable
              as int,
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
  $CaseProducerCopyWith<$Res> get caseProducer {
    return $CaseProducerCopyWith<$Res>(_value.caseProducer, (value) {
      return _then(_value.copyWith(caseProducer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CaseSizeCopyWith<$Res> get caseSize {
    return $CaseSizeCopyWith<$Res>(_value.caseSize, (value) {
      return _then(_value.copyWith(caseSize: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CasePowerSupplyLocationCopyWith<$Res> get casePowerSupplyLocation {
    return $CasePowerSupplyLocationCopyWith<$Res>(
        _value.casePowerSupplyLocation, (value) {
      return _then(_value.copyWith(casePowerSupplyLocation: value) as $Val);
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
abstract class _$$_PcCaseCopyWith<$Res> implements $PcCaseCopyWith<$Res> {
  factory _$$_PcCaseCopyWith(_$_PcCase value, $Res Function(_$_PcCase) then) =
      __$$_PcCaseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      CaseProducer caseProducer,
      CaseSize caseSize,
      List<FormFactor> formFactor,
      CasePowerSupplyLocation casePowerSupplyLocation,
      bool fansIncluded,
      int usb_3_2,
      int usb_3_0,
      int usb_2_0,
      List<CaseDesignFeatures> designFeatures,
      int maxLengthOfGraphicCard,
      int powerSupplyFormFactor,
      String description,
      int recommendedPrice,
      PerformanceLevel performanceLevel});

  @override
  $CaseProducerCopyWith<$Res> get caseProducer;
  @override
  $CaseSizeCopyWith<$Res> get caseSize;
  @override
  $CasePowerSupplyLocationCopyWith<$Res> get casePowerSupplyLocation;
  @override
  $PerformanceLevelCopyWith<$Res> get performanceLevel;
}

/// @nodoc
class __$$_PcCaseCopyWithImpl<$Res>
    extends _$PcCaseCopyWithImpl<$Res, _$_PcCase>
    implements _$$_PcCaseCopyWith<$Res> {
  __$$_PcCaseCopyWithImpl(_$_PcCase _value, $Res Function(_$_PcCase) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? caseProducer = null,
    Object? caseSize = null,
    Object? formFactor = null,
    Object? casePowerSupplyLocation = null,
    Object? fansIncluded = null,
    Object? usb_3_2 = null,
    Object? usb_3_0 = null,
    Object? usb_2_0 = null,
    Object? designFeatures = null,
    Object? maxLengthOfGraphicCard = null,
    Object? powerSupplyFormFactor = null,
    Object? description = null,
    Object? recommendedPrice = null,
    Object? performanceLevel = null,
  }) {
    return _then(_$_PcCase(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      caseProducer: null == caseProducer
          ? _value.caseProducer
          : caseProducer // ignore: cast_nullable_to_non_nullable
              as CaseProducer,
      caseSize: null == caseSize
          ? _value.caseSize
          : caseSize // ignore: cast_nullable_to_non_nullable
              as CaseSize,
      formFactor: null == formFactor
          ? _value._formFactor
          : formFactor // ignore: cast_nullable_to_non_nullable
              as List<FormFactor>,
      casePowerSupplyLocation: null == casePowerSupplyLocation
          ? _value.casePowerSupplyLocation
          : casePowerSupplyLocation // ignore: cast_nullable_to_non_nullable
              as CasePowerSupplyLocation,
      fansIncluded: null == fansIncluded
          ? _value.fansIncluded
          : fansIncluded // ignore: cast_nullable_to_non_nullable
              as bool,
      usb_3_2: null == usb_3_2
          ? _value.usb_3_2
          : usb_3_2 // ignore: cast_nullable_to_non_nullable
              as int,
      usb_3_0: null == usb_3_0
          ? _value.usb_3_0
          : usb_3_0 // ignore: cast_nullable_to_non_nullable
              as int,
      usb_2_0: null == usb_2_0
          ? _value.usb_2_0
          : usb_2_0 // ignore: cast_nullable_to_non_nullable
              as int,
      designFeatures: null == designFeatures
          ? _value._designFeatures
          : designFeatures // ignore: cast_nullable_to_non_nullable
              as List<CaseDesignFeatures>,
      maxLengthOfGraphicCard: null == maxLengthOfGraphicCard
          ? _value.maxLengthOfGraphicCard
          : maxLengthOfGraphicCard // ignore: cast_nullable_to_non_nullable
              as int,
      powerSupplyFormFactor: null == powerSupplyFormFactor
          ? _value.powerSupplyFormFactor
          : powerSupplyFormFactor // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$_PcCase implements _PcCase {
  const _$_PcCase(
      {required this.id,
      required this.name,
      required this.caseProducer,
      required this.caseSize,
      required final List<FormFactor> formFactor,
      required this.casePowerSupplyLocation,
      required this.fansIncluded,
      required this.usb_3_2,
      required this.usb_3_0,
      required this.usb_2_0,
      required final List<CaseDesignFeatures> designFeatures,
      required this.maxLengthOfGraphicCard,
      required this.powerSupplyFormFactor,
      required this.description,
      required this.recommendedPrice,
      required this.performanceLevel})
      : _formFactor = formFactor,
        _designFeatures = designFeatures;

  factory _$_PcCase.fromJson(Map<String, dynamic> json) =>
      _$$_PcCaseFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final CaseProducer caseProducer;
  @override
  final CaseSize caseSize;
  final List<FormFactor> _formFactor;
  @override
  List<FormFactor> get formFactor {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_formFactor);
  }

  @override
  final CasePowerSupplyLocation casePowerSupplyLocation;
  @override
  final bool fansIncluded;
  @override
  final int usb_3_2;
  @override
  final int usb_3_0;
  @override
  final int usb_2_0;
  final List<CaseDesignFeatures> _designFeatures;
  @override
  List<CaseDesignFeatures> get designFeatures {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_designFeatures);
  }

  @override
  final int maxLengthOfGraphicCard;
  @override
  final int powerSupplyFormFactor;
  @override
  final String description;
  @override
  final int recommendedPrice;
  @override
  final PerformanceLevel performanceLevel;

  @override
  String toString() {
    return 'PcCase(id: $id, name: $name, caseProducer: $caseProducer, caseSize: $caseSize, formFactor: $formFactor, casePowerSupplyLocation: $casePowerSupplyLocation, fansIncluded: $fansIncluded, usb_3_2: $usb_3_2, usb_3_0: $usb_3_0, usb_2_0: $usb_2_0, designFeatures: $designFeatures, maxLengthOfGraphicCard: $maxLengthOfGraphicCard, powerSupplyFormFactor: $powerSupplyFormFactor, description: $description, recommendedPrice: $recommendedPrice, performanceLevel: $performanceLevel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PcCase &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.caseProducer, caseProducer) ||
                other.caseProducer == caseProducer) &&
            (identical(other.caseSize, caseSize) ||
                other.caseSize == caseSize) &&
            const DeepCollectionEquality()
                .equals(other._formFactor, _formFactor) &&
            (identical(
                    other.casePowerSupplyLocation, casePowerSupplyLocation) ||
                other.casePowerSupplyLocation == casePowerSupplyLocation) &&
            (identical(other.fansIncluded, fansIncluded) ||
                other.fansIncluded == fansIncluded) &&
            (identical(other.usb_3_2, usb_3_2) || other.usb_3_2 == usb_3_2) &&
            (identical(other.usb_3_0, usb_3_0) || other.usb_3_0 == usb_3_0) &&
            (identical(other.usb_2_0, usb_2_0) || other.usb_2_0 == usb_2_0) &&
            const DeepCollectionEquality()
                .equals(other._designFeatures, _designFeatures) &&
            (identical(other.maxLengthOfGraphicCard, maxLengthOfGraphicCard) ||
                other.maxLengthOfGraphicCard == maxLengthOfGraphicCard) &&
            (identical(other.powerSupplyFormFactor, powerSupplyFormFactor) ||
                other.powerSupplyFormFactor == powerSupplyFormFactor) &&
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
      caseProducer,
      caseSize,
      const DeepCollectionEquality().hash(_formFactor),
      casePowerSupplyLocation,
      fansIncluded,
      usb_3_2,
      usb_3_0,
      usb_2_0,
      const DeepCollectionEquality().hash(_designFeatures),
      maxLengthOfGraphicCard,
      powerSupplyFormFactor,
      description,
      recommendedPrice,
      performanceLevel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PcCaseCopyWith<_$_PcCase> get copyWith =>
      __$$_PcCaseCopyWithImpl<_$_PcCase>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PcCaseToJson(
      this,
    );
  }
}

abstract class _PcCase implements PcCase {
  const factory _PcCase(
      {required final int id,
      required final String name,
      required final CaseProducer caseProducer,
      required final CaseSize caseSize,
      required final List<FormFactor> formFactor,
      required final CasePowerSupplyLocation casePowerSupplyLocation,
      required final bool fansIncluded,
      required final int usb_3_2,
      required final int usb_3_0,
      required final int usb_2_0,
      required final List<CaseDesignFeatures> designFeatures,
      required final int maxLengthOfGraphicCard,
      required final int powerSupplyFormFactor,
      required final String description,
      required final int recommendedPrice,
      required final PerformanceLevel performanceLevel}) = _$_PcCase;

  factory _PcCase.fromJson(Map<String, dynamic> json) = _$_PcCase.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  CaseProducer get caseProducer;
  @override
  CaseSize get caseSize;
  @override
  List<FormFactor> get formFactor;
  @override
  CasePowerSupplyLocation get casePowerSupplyLocation;
  @override
  bool get fansIncluded;
  @override
  int get usb_3_2;
  @override
  int get usb_3_0;
  @override
  int get usb_2_0;
  @override
  List<CaseDesignFeatures> get designFeatures;
  @override
  int get maxLengthOfGraphicCard;
  @override
  int get powerSupplyFormFactor;
  @override
  String get description;
  @override
  int get recommendedPrice;
  @override
  PerformanceLevel get performanceLevel;
  @override
  @JsonKey(ignore: true)
  _$$_PcCaseCopyWith<_$_PcCase> get copyWith =>
      throw _privateConstructorUsedError;
}
