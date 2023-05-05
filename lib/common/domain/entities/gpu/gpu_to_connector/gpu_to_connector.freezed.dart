// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gpu_to_connector.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GPUToConnector _$GPUToConnectorFromJson(Map<String, dynamic> json) {
  return _GPUToConnector.fromJson(json);
}

/// @nodoc
mixin _$GPUToConnector {
  int get id => throw _privateConstructorUsedError;
  GPU get gpu => throw _privateConstructorUsedError;
  GPUConnector get gpuConnector => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GPUToConnectorCopyWith<GPUToConnector> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GPUToConnectorCopyWith<$Res> {
  factory $GPUToConnectorCopyWith(
          GPUToConnector value, $Res Function(GPUToConnector) then) =
      _$GPUToConnectorCopyWithImpl<$Res, GPUToConnector>;
  @useResult
  $Res call({int id, GPU gpu, GPUConnector gpuConnector});

  $GPUCopyWith<$Res> get gpu;
  $GPUConnectorCopyWith<$Res> get gpuConnector;
}

/// @nodoc
class _$GPUToConnectorCopyWithImpl<$Res, $Val extends GPUToConnector>
    implements $GPUToConnectorCopyWith<$Res> {
  _$GPUToConnectorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? gpu = null,
    Object? gpuConnector = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      gpu: null == gpu
          ? _value.gpu
          : gpu // ignore: cast_nullable_to_non_nullable
              as GPU,
      gpuConnector: null == gpuConnector
          ? _value.gpuConnector
          : gpuConnector // ignore: cast_nullable_to_non_nullable
              as GPUConnector,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GPUCopyWith<$Res> get gpu {
    return $GPUCopyWith<$Res>(_value.gpu, (value) {
      return _then(_value.copyWith(gpu: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GPUConnectorCopyWith<$Res> get gpuConnector {
    return $GPUConnectorCopyWith<$Res>(_value.gpuConnector, (value) {
      return _then(_value.copyWith(gpuConnector: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GPUToConnectorCopyWith<$Res>
    implements $GPUToConnectorCopyWith<$Res> {
  factory _$$_GPUToConnectorCopyWith(
          _$_GPUToConnector value, $Res Function(_$_GPUToConnector) then) =
      __$$_GPUToConnectorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, GPU gpu, GPUConnector gpuConnector});

  @override
  $GPUCopyWith<$Res> get gpu;
  @override
  $GPUConnectorCopyWith<$Res> get gpuConnector;
}

/// @nodoc
class __$$_GPUToConnectorCopyWithImpl<$Res>
    extends _$GPUToConnectorCopyWithImpl<$Res, _$_GPUToConnector>
    implements _$$_GPUToConnectorCopyWith<$Res> {
  __$$_GPUToConnectorCopyWithImpl(
      _$_GPUToConnector _value, $Res Function(_$_GPUToConnector) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? gpu = null,
    Object? gpuConnector = null,
  }) {
    return _then(_$_GPUToConnector(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      gpu: null == gpu
          ? _value.gpu
          : gpu // ignore: cast_nullable_to_non_nullable
              as GPU,
      gpuConnector: null == gpuConnector
          ? _value.gpuConnector
          : gpuConnector // ignore: cast_nullable_to_non_nullable
              as GPUConnector,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GPUToConnector implements _GPUToConnector {
  const _$_GPUToConnector(
      {required this.id, required this.gpu, required this.gpuConnector});

  factory _$_GPUToConnector.fromJson(Map<String, dynamic> json) =>
      _$$_GPUToConnectorFromJson(json);

  @override
  final int id;
  @override
  final GPU gpu;
  @override
  final GPUConnector gpuConnector;

  @override
  String toString() {
    return 'GPUToConnector(id: $id, gpu: $gpu, gpuConnector: $gpuConnector)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GPUToConnector &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.gpu, gpu) || other.gpu == gpu) &&
            (identical(other.gpuConnector, gpuConnector) ||
                other.gpuConnector == gpuConnector));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, gpu, gpuConnector);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GPUToConnectorCopyWith<_$_GPUToConnector> get copyWith =>
      __$$_GPUToConnectorCopyWithImpl<_$_GPUToConnector>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GPUToConnectorToJson(
      this,
    );
  }
}

abstract class _GPUToConnector implements GPUToConnector {
  const factory _GPUToConnector(
      {required final int id,
      required final GPU gpu,
      required final GPUConnector gpuConnector}) = _$_GPUToConnector;

  factory _GPUToConnector.fromJson(Map<String, dynamic> json) =
      _$_GPUToConnector.fromJson;

  @override
  int get id;
  @override
  GPU get gpu;
  @override
  GPUConnector get gpuConnector;
  @override
  @JsonKey(ignore: true)
  _$$_GPUToConnectorCopyWith<_$_GPUToConnector> get copyWith =>
      throw _privateConstructorUsedError;
}
