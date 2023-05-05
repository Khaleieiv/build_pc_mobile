// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'storage_interface.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StorageInterface _$StorageInterfaceFromJson(Map<String, dynamic> json) {
  return _StorageInterface.fromJson(json);
}

/// @nodoc
mixin _$StorageInterface {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StorageInterfaceCopyWith<StorageInterface> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageInterfaceCopyWith<$Res> {
  factory $StorageInterfaceCopyWith(
          StorageInterface value, $Res Function(StorageInterface) then) =
      _$StorageInterfaceCopyWithImpl<$Res, StorageInterface>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$StorageInterfaceCopyWithImpl<$Res, $Val extends StorageInterface>
    implements $StorageInterfaceCopyWith<$Res> {
  _$StorageInterfaceCopyWithImpl(this._value, this._then);

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
abstract class _$$_StorageInterfaceCopyWith<$Res>
    implements $StorageInterfaceCopyWith<$Res> {
  factory _$$_StorageInterfaceCopyWith(
          _$_StorageInterface value, $Res Function(_$_StorageInterface) then) =
      __$$_StorageInterfaceCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$_StorageInterfaceCopyWithImpl<$Res>
    extends _$StorageInterfaceCopyWithImpl<$Res, _$_StorageInterface>
    implements _$$_StorageInterfaceCopyWith<$Res> {
  __$$_StorageInterfaceCopyWithImpl(
      _$_StorageInterface _value, $Res Function(_$_StorageInterface) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$_StorageInterface(
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
class _$_StorageInterface implements _StorageInterface {
  const _$_StorageInterface({required this.id, required this.name});

  factory _$_StorageInterface.fromJson(Map<String, dynamic> json) =>
      _$$_StorageInterfaceFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'StorageInterface(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StorageInterface &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StorageInterfaceCopyWith<_$_StorageInterface> get copyWith =>
      __$$_StorageInterfaceCopyWithImpl<_$_StorageInterface>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StorageInterfaceToJson(
      this,
    );
  }
}

abstract class _StorageInterface implements StorageInterface {
  const factory _StorageInterface(
      {required final int id,
      required final String name}) = _$_StorageInterface;

  factory _StorageInterface.fromJson(Map<String, dynamic> json) =
      _$_StorageInterface.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_StorageInterfaceCopyWith<_$_StorageInterface> get copyWith =>
      throw _privateConstructorUsedError;
}
