// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rating.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Rating _$RatingFromJson(Map<String, dynamic> json) {
  return _Rating.fromJson(json);
}

/// @nodoc
mixin _$Rating {
  int get id => throw _privateConstructorUsedError;
  List<Likes> get like => throw _privateConstructorUsedError;
  BuildPc get buildPc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RatingCopyWith<Rating> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RatingCopyWith<$Res> {
  factory $RatingCopyWith(Rating value, $Res Function(Rating) then) =
      _$RatingCopyWithImpl<$Res, Rating>;
  @useResult
  $Res call({int id, List<Likes> like, BuildPc buildPc});

  $BuildPcCopyWith<$Res> get buildPc;
}

/// @nodoc
class _$RatingCopyWithImpl<$Res, $Val extends Rating>
    implements $RatingCopyWith<$Res> {
  _$RatingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? like = null,
    Object? buildPc = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      like: null == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as List<Likes>,
      buildPc: null == buildPc
          ? _value.buildPc
          : buildPc // ignore: cast_nullable_to_non_nullable
              as BuildPc,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BuildPcCopyWith<$Res> get buildPc {
    return $BuildPcCopyWith<$Res>(_value.buildPc, (value) {
      return _then(_value.copyWith(buildPc: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RatingCopyWith<$Res> implements $RatingCopyWith<$Res> {
  factory _$$_RatingCopyWith(_$_Rating value, $Res Function(_$_Rating) then) =
      __$$_RatingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, List<Likes> like, BuildPc buildPc});

  @override
  $BuildPcCopyWith<$Res> get buildPc;
}

/// @nodoc
class __$$_RatingCopyWithImpl<$Res>
    extends _$RatingCopyWithImpl<$Res, _$_Rating>
    implements _$$_RatingCopyWith<$Res> {
  __$$_RatingCopyWithImpl(_$_Rating _value, $Res Function(_$_Rating) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? like = null,
    Object? buildPc = null,
  }) {
    return _then(_$_Rating(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      like: null == like
          ? _value._like
          : like // ignore: cast_nullable_to_non_nullable
              as List<Likes>,
      buildPc: null == buildPc
          ? _value.buildPc
          : buildPc // ignore: cast_nullable_to_non_nullable
              as BuildPc,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Rating implements _Rating {
  const _$_Rating(
      {required this.id,
      required final List<Likes> like,
      required this.buildPc})
      : _like = like;

  factory _$_Rating.fromJson(Map<String, dynamic> json) =>
      _$$_RatingFromJson(json);

  @override
  final int id;
  final List<Likes> _like;
  @override
  List<Likes> get like {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_like);
  }

  @override
  final BuildPc buildPc;

  @override
  String toString() {
    return 'Rating(id: $id, like: $like, buildPc: $buildPc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Rating &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._like, _like) &&
            (identical(other.buildPc, buildPc) || other.buildPc == buildPc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, const DeepCollectionEquality().hash(_like), buildPc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RatingCopyWith<_$_Rating> get copyWith =>
      __$$_RatingCopyWithImpl<_$_Rating>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RatingToJson(
      this,
    );
  }
}

abstract class _Rating implements Rating {
  const factory _Rating(
      {required final int id,
      required final List<Likes> like,
      required final BuildPc buildPc}) = _$_Rating;

  factory _Rating.fromJson(Map<String, dynamic> json) = _$_Rating.fromJson;

  @override
  int get id;
  @override
  List<Likes> get like;
  @override
  BuildPc get buildPc;
  @override
  @JsonKey(ignore: true)
  _$$_RatingCopyWith<_$_Rating> get copyWith =>
      throw _privateConstructorUsedError;
}
