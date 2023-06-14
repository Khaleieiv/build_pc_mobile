// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileParams _$ProfileParamsFromJson(Map<String, dynamic> json) {
  return _ProfileParams.fromJson(json);
}

/// @nodoc
mixin _$ProfileParams {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileParamsCopyWith<ProfileParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileParamsCopyWith<$Res> {
  factory $ProfileParamsCopyWith(
          ProfileParams value, $Res Function(ProfileParams) then) =
      _$ProfileParamsCopyWithImpl<$Res, ProfileParams>;
  @useResult
  $Res call({int id, String name, String username, String role, String email});
}

/// @nodoc
class _$ProfileParamsCopyWithImpl<$Res, $Val extends ProfileParams>
    implements $ProfileParamsCopyWith<$Res> {
  _$ProfileParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? username = null,
    Object? role = null,
    Object? email = null,
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
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileParamsCopyWith<$Res>
    implements $ProfileParamsCopyWith<$Res> {
  factory _$$_ProfileParamsCopyWith(
          _$_ProfileParams value, $Res Function(_$_ProfileParams) then) =
      __$$_ProfileParamsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String username, String role, String email});
}

/// @nodoc
class __$$_ProfileParamsCopyWithImpl<$Res>
    extends _$ProfileParamsCopyWithImpl<$Res, _$_ProfileParams>
    implements _$$_ProfileParamsCopyWith<$Res> {
  __$$_ProfileParamsCopyWithImpl(
      _$_ProfileParams _value, $Res Function(_$_ProfileParams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? username = null,
    Object? role = null,
    Object? email = null,
  }) {
    return _then(_$_ProfileParams(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileParams implements _ProfileParams {
  const _$_ProfileParams(
      {required this.id,
      required this.name,
      required this.username,
      required this.role,
      required this.email});

  factory _$_ProfileParams.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileParamsFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String username;
  @override
  final String role;
  @override
  final String email;

  @override
  String toString() {
    return 'ProfileParams(id: $id, name: $name, username: $username, role: $role, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileParams &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, username, role, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileParamsCopyWith<_$_ProfileParams> get copyWith =>
      __$$_ProfileParamsCopyWithImpl<_$_ProfileParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileParamsToJson(
      this,
    );
  }
}

abstract class _ProfileParams implements ProfileParams {
  const factory _ProfileParams(
      {required final int id,
      required final String name,
      required final String username,
      required final String role,
      required final String email}) = _$_ProfileParams;

  factory _ProfileParams.fromJson(Map<String, dynamic> json) =
      _$_ProfileParams.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get username;
  @override
  String get role;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileParamsCopyWith<_$_ProfileParams> get copyWith =>
      throw _privateConstructorUsedError;
}
