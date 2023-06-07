// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'case_design_features.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CaseDesignFeatures _$CaseDesignFeaturesFromJson(Map<String, dynamic> json) {
  return _CaseDesignFeatures.fromJson(json);
}

/// @nodoc
mixin _$CaseDesignFeatures {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CaseDesignFeaturesCopyWith<CaseDesignFeatures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaseDesignFeaturesCopyWith<$Res> {
  factory $CaseDesignFeaturesCopyWith(
          CaseDesignFeatures value, $Res Function(CaseDesignFeatures) then) =
      _$CaseDesignFeaturesCopyWithImpl<$Res, CaseDesignFeatures>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$CaseDesignFeaturesCopyWithImpl<$Res, $Val extends CaseDesignFeatures>
    implements $CaseDesignFeaturesCopyWith<$Res> {
  _$CaseDesignFeaturesCopyWithImpl(this._value, this._then);

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
abstract class _$$_CaseDesignFeaturesCopyWith<$Res>
    implements $CaseDesignFeaturesCopyWith<$Res> {
  factory _$$_CaseDesignFeaturesCopyWith(_$_CaseDesignFeatures value,
          $Res Function(_$_CaseDesignFeatures) then) =
      __$$_CaseDesignFeaturesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$_CaseDesignFeaturesCopyWithImpl<$Res>
    extends _$CaseDesignFeaturesCopyWithImpl<$Res, _$_CaseDesignFeatures>
    implements _$$_CaseDesignFeaturesCopyWith<$Res> {
  __$$_CaseDesignFeaturesCopyWithImpl(
      _$_CaseDesignFeatures _value, $Res Function(_$_CaseDesignFeatures) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_CaseDesignFeatures(
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
class _$_CaseDesignFeatures extends _CaseDesignFeatures {
  const _$_CaseDesignFeatures({required this.id, required this.name})
      : super._();

  factory _$_CaseDesignFeatures.fromJson(Map<String, dynamic> json) =>
      _$$_CaseDesignFeaturesFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'CaseDesignFeatures(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CaseDesignFeatures &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CaseDesignFeaturesCopyWith<_$_CaseDesignFeatures> get copyWith =>
      __$$_CaseDesignFeaturesCopyWithImpl<_$_CaseDesignFeatures>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CaseDesignFeaturesToJson(
      this,
    );
  }
}

abstract class _CaseDesignFeatures extends CaseDesignFeatures {
  const factory _CaseDesignFeatures(
      {required final int id,
      required final String name}) = _$_CaseDesignFeatures;
  const _CaseDesignFeatures._() : super._();

  factory _CaseDesignFeatures.fromJson(Map<String, dynamic> json) =
      _$_CaseDesignFeatures.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CaseDesignFeaturesCopyWith<_$_CaseDesignFeatures> get copyWith =>
      throw _privateConstructorUsedError;
}
