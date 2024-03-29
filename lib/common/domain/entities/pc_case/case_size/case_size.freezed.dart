// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'case_size.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CaseSize _$CaseSizeFromJson(Map<String, dynamic> json) {
  return _CaseSize.fromJson(json);
}

/// @nodoc
mixin _$CaseSize {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'size')
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CaseSizeCopyWith<CaseSize> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaseSizeCopyWith<$Res> {
  factory $CaseSizeCopyWith(CaseSize value, $Res Function(CaseSize) then) =
      _$CaseSizeCopyWithImpl<$Res, CaseSize>;
  @useResult
  $Res call({int id, @JsonKey(name: 'size') String name});
}

/// @nodoc
class _$CaseSizeCopyWithImpl<$Res, $Val extends CaseSize>
    implements $CaseSizeCopyWith<$Res> {
  _$CaseSizeCopyWithImpl(this._value, this._then);

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
abstract class _$$_CaseSizeCopyWith<$Res> implements $CaseSizeCopyWith<$Res> {
  factory _$$_CaseSizeCopyWith(
          _$_CaseSize value, $Res Function(_$_CaseSize) then) =
      __$$_CaseSizeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, @JsonKey(name: 'size') String name});
}

/// @nodoc
class __$$_CaseSizeCopyWithImpl<$Res>
    extends _$CaseSizeCopyWithImpl<$Res, _$_CaseSize>
    implements _$$_CaseSizeCopyWith<$Res> {
  __$$_CaseSizeCopyWithImpl(
      _$_CaseSize _value, $Res Function(_$_CaseSize) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_CaseSize(
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
class _$_CaseSize extends _CaseSize {
  const _$_CaseSize(
      {required this.id, @JsonKey(name: 'size') required this.name})
      : super._();

  factory _$_CaseSize.fromJson(Map<String, dynamic> json) =>
      _$$_CaseSizeFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'size')
  final String name;

  @override
  String toString() {
    return 'CaseSize(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CaseSize &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CaseSizeCopyWith<_$_CaseSize> get copyWith =>
      __$$_CaseSizeCopyWithImpl<_$_CaseSize>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CaseSizeToJson(
      this,
    );
  }
}

abstract class _CaseSize extends CaseSize {
  const factory _CaseSize(
      {required final int id,
      @JsonKey(name: 'size') required final String name}) = _$_CaseSize;
  const _CaseSize._() : super._();

  factory _CaseSize.fromJson(Map<String, dynamic> json) = _$_CaseSize.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'size')
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CaseSizeCopyWith<_$_CaseSize> get copyWith =>
      throw _privateConstructorUsedError;
}
