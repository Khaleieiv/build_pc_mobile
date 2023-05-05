// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'motherboard_chipset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MotherboardChipset _$MotherboardChipsetFromJson(Map<String, dynamic> json) {
  return _MotherboardChipset.fromJson(json);
}

/// @nodoc
mixin _$MotherboardChipset {
  int get id => throw _privateConstructorUsedError;
  String get chipset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MotherboardChipsetCopyWith<MotherboardChipset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MotherboardChipsetCopyWith<$Res> {
  factory $MotherboardChipsetCopyWith(
          MotherboardChipset value, $Res Function(MotherboardChipset) then) =
      _$MotherboardChipsetCopyWithImpl<$Res, MotherboardChipset>;
  @useResult
  $Res call({int id, String chipset});
}

/// @nodoc
class _$MotherboardChipsetCopyWithImpl<$Res, $Val extends MotherboardChipset>
    implements $MotherboardChipsetCopyWith<$Res> {
  _$MotherboardChipsetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chipset = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      chipset: null == chipset
          ? _value.chipset
          : chipset // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MotherboardChipsetCopyWith<$Res>
    implements $MotherboardChipsetCopyWith<$Res> {
  factory _$$_MotherboardChipsetCopyWith(_$_MotherboardChipset value,
          $Res Function(_$_MotherboardChipset) then) =
      __$$_MotherboardChipsetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String chipset});
}

/// @nodoc
class __$$_MotherboardChipsetCopyWithImpl<$Res>
    extends _$MotherboardChipsetCopyWithImpl<$Res, _$_MotherboardChipset>
    implements _$$_MotherboardChipsetCopyWith<$Res> {
  __$$_MotherboardChipsetCopyWithImpl(
      _$_MotherboardChipset _value, $Res Function(_$_MotherboardChipset) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? chipset = null,
  }) {
    return _then(_$_MotherboardChipset(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      chipset: null == chipset
          ? _value.chipset
          : chipset // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MotherboardChipset implements _MotherboardChipset {
  const _$_MotherboardChipset({required this.id, required this.chipset});

  factory _$_MotherboardChipset.fromJson(Map<String, dynamic> json) =>
      _$$_MotherboardChipsetFromJson(json);

  @override
  final int id;
  @override
  final String chipset;

  @override
  String toString() {
    return 'MotherboardChipset(id: $id, chipset: $chipset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MotherboardChipset &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chipset, chipset) || other.chipset == chipset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, chipset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MotherboardChipsetCopyWith<_$_MotherboardChipset> get copyWith =>
      __$$_MotherboardChipsetCopyWithImpl<_$_MotherboardChipset>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MotherboardChipsetToJson(
      this,
    );
  }
}

abstract class _MotherboardChipset implements MotherboardChipset {
  const factory _MotherboardChipset(
      {required final int id,
      required final String chipset}) = _$_MotherboardChipset;

  factory _MotherboardChipset.fromJson(Map<String, dynamic> json) =
      _$_MotherboardChipset.fromJson;

  @override
  int get id;
  @override
  String get chipset;
  @override
  @JsonKey(ignore: true)
  _$$_MotherboardChipsetCopyWith<_$_MotherboardChipset> get copyWith =>
      throw _privateConstructorUsedError;
}
