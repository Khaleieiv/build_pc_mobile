// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'likes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Likes _$LikesFromJson(Map<String, dynamic> json) {
  return _Likes.fromJson(json);
}

/// @nodoc
mixin _$Likes {
  int get id => throw _privateConstructorUsedError;
  BuildPc get buildPc => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikesCopyWith<Likes> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikesCopyWith<$Res> {
  factory $LikesCopyWith(Likes value, $Res Function(Likes) then) =
      _$LikesCopyWithImpl<$Res, Likes>;
  @useResult
  $Res call({int id, BuildPc buildPc, User user});

  $BuildPcCopyWith<$Res> get buildPc;
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$LikesCopyWithImpl<$Res, $Val extends Likes>
    implements $LikesCopyWith<$Res> {
  _$LikesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? buildPc = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      buildPc: null == buildPc
          ? _value.buildPc
          : buildPc // ignore: cast_nullable_to_non_nullable
              as BuildPc,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BuildPcCopyWith<$Res> get buildPc {
    return $BuildPcCopyWith<$Res>(_value.buildPc, (value) {
      return _then(_value.copyWith(buildPc: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LikesCopyWith<$Res> implements $LikesCopyWith<$Res> {
  factory _$$_LikesCopyWith(_$_Likes value, $Res Function(_$_Likes) then) =
      __$$_LikesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, BuildPc buildPc, User user});

  @override
  $BuildPcCopyWith<$Res> get buildPc;
  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$_LikesCopyWithImpl<$Res> extends _$LikesCopyWithImpl<$Res, _$_Likes>
    implements _$$_LikesCopyWith<$Res> {
  __$$_LikesCopyWithImpl(_$_Likes _value, $Res Function(_$_Likes) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? buildPc = null,
    Object? user = null,
  }) {
    return _then(_$_Likes(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      buildPc: null == buildPc
          ? _value.buildPc
          : buildPc // ignore: cast_nullable_to_non_nullable
              as BuildPc,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Likes implements _Likes {
  const _$_Likes({required this.id, required this.buildPc, required this.user});

  factory _$_Likes.fromJson(Map<String, dynamic> json) =>
      _$$_LikesFromJson(json);

  @override
  final int id;
  @override
  final BuildPc buildPc;
  @override
  final User user;

  @override
  String toString() {
    return 'Likes(id: $id, buildPc: $buildPc, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Likes &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.buildPc, buildPc) || other.buildPc == buildPc) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, buildPc, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LikesCopyWith<_$_Likes> get copyWith =>
      __$$_LikesCopyWithImpl<_$_Likes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LikesToJson(
      this,
    );
  }
}

abstract class _Likes implements Likes {
  const factory _Likes(
      {required final int id,
      required final BuildPc buildPc,
      required final User user}) = _$_Likes;

  factory _Likes.fromJson(Map<String, dynamic> json) = _$_Likes.fromJson;

  @override
  int get id;
  @override
  BuildPc get buildPc;
  @override
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$_LikesCopyWith<_$_Likes> get copyWith =>
      throw _privateConstructorUsedError;
}
