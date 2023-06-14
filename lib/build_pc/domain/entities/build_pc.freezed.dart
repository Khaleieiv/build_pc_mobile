// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'build_pc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BuildPc _$BuildPcFromJson(Map<String, dynamic> json) {
  return _BuildPc.fromJson(json);
}

/// @nodoc
mixin _$BuildPc {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'nameOfBuild')
  String? get name => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  Motherboard? get motherboard => throw _privateConstructorUsedError;
  @JsonKey(name: 'processor')
  CPU? get cpu => throw _privateConstructorUsedError;
  @JsonKey(name: 'graphicCard')
  GPU? get gpu => throw _privateConstructorUsedError;
  List<Ram>? get ram => throw _privateConstructorUsedError;
  PowerSupply? get powerSupply => throw _privateConstructorUsedError;
  List<Hdd>? get hdd => throw _privateConstructorUsedError;
  List<Ssd>? get ssd => throw _privateConstructorUsedError;
  PcCase? get pcCase => throw _privateConstructorUsedError;
  Cooler? get cooler => throw _privateConstructorUsedError;
  int get countOfLikes => throw _privateConstructorUsedError;
  Rating? get ratingId => throw _privateConstructorUsedError;
  int get totalPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BuildPcCopyWith<BuildPc> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuildPcCopyWith<$Res> {
  factory $BuildPcCopyWith(BuildPc value, $Res Function(BuildPc) then) =
      _$BuildPcCopyWithImpl<$Res, BuildPc>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'nameOfBuild') String? name,
      User? user,
      Motherboard? motherboard,
      @JsonKey(name: 'processor') CPU? cpu,
      @JsonKey(name: 'graphicCard') GPU? gpu,
      List<Ram>? ram,
      PowerSupply? powerSupply,
      List<Hdd>? hdd,
      List<Ssd>? ssd,
      PcCase? pcCase,
      Cooler? cooler,
      int countOfLikes,
      Rating? ratingId,
      int totalPrice});

  $UserCopyWith<$Res>? get user;
  $MotherboardCopyWith<$Res>? get motherboard;
  $CPUCopyWith<$Res>? get cpu;
  $GPUCopyWith<$Res>? get gpu;
  $PowerSupplyCopyWith<$Res>? get powerSupply;
  $PcCaseCopyWith<$Res>? get pcCase;
  $CoolerCopyWith<$Res>? get cooler;
  $RatingCopyWith<$Res>? get ratingId;
}

/// @nodoc
class _$BuildPcCopyWithImpl<$Res, $Val extends BuildPc>
    implements $BuildPcCopyWith<$Res> {
  _$BuildPcCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? user = freezed,
    Object? motherboard = freezed,
    Object? cpu = freezed,
    Object? gpu = freezed,
    Object? ram = freezed,
    Object? powerSupply = freezed,
    Object? hdd = freezed,
    Object? ssd = freezed,
    Object? pcCase = freezed,
    Object? cooler = freezed,
    Object? countOfLikes = null,
    Object? ratingId = freezed,
    Object? totalPrice = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      motherboard: freezed == motherboard
          ? _value.motherboard
          : motherboard // ignore: cast_nullable_to_non_nullable
              as Motherboard?,
      cpu: freezed == cpu
          ? _value.cpu
          : cpu // ignore: cast_nullable_to_non_nullable
              as CPU?,
      gpu: freezed == gpu
          ? _value.gpu
          : gpu // ignore: cast_nullable_to_non_nullable
              as GPU?,
      ram: freezed == ram
          ? _value.ram
          : ram // ignore: cast_nullable_to_non_nullable
              as List<Ram>?,
      powerSupply: freezed == powerSupply
          ? _value.powerSupply
          : powerSupply // ignore: cast_nullable_to_non_nullable
              as PowerSupply?,
      hdd: freezed == hdd
          ? _value.hdd
          : hdd // ignore: cast_nullable_to_non_nullable
              as List<Hdd>?,
      ssd: freezed == ssd
          ? _value.ssd
          : ssd // ignore: cast_nullable_to_non_nullable
              as List<Ssd>?,
      pcCase: freezed == pcCase
          ? _value.pcCase
          : pcCase // ignore: cast_nullable_to_non_nullable
              as PcCase?,
      cooler: freezed == cooler
          ? _value.cooler
          : cooler // ignore: cast_nullable_to_non_nullable
              as Cooler?,
      countOfLikes: null == countOfLikes
          ? _value.countOfLikes
          : countOfLikes // ignore: cast_nullable_to_non_nullable
              as int,
      ratingId: freezed == ratingId
          ? _value.ratingId
          : ratingId // ignore: cast_nullable_to_non_nullable
              as Rating?,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MotherboardCopyWith<$Res>? get motherboard {
    if (_value.motherboard == null) {
      return null;
    }

    return $MotherboardCopyWith<$Res>(_value.motherboard!, (value) {
      return _then(_value.copyWith(motherboard: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CPUCopyWith<$Res>? get cpu {
    if (_value.cpu == null) {
      return null;
    }

    return $CPUCopyWith<$Res>(_value.cpu!, (value) {
      return _then(_value.copyWith(cpu: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GPUCopyWith<$Res>? get gpu {
    if (_value.gpu == null) {
      return null;
    }

    return $GPUCopyWith<$Res>(_value.gpu!, (value) {
      return _then(_value.copyWith(gpu: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PowerSupplyCopyWith<$Res>? get powerSupply {
    if (_value.powerSupply == null) {
      return null;
    }

    return $PowerSupplyCopyWith<$Res>(_value.powerSupply!, (value) {
      return _then(_value.copyWith(powerSupply: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PcCaseCopyWith<$Res>? get pcCase {
    if (_value.pcCase == null) {
      return null;
    }

    return $PcCaseCopyWith<$Res>(_value.pcCase!, (value) {
      return _then(_value.copyWith(pcCase: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CoolerCopyWith<$Res>? get cooler {
    if (_value.cooler == null) {
      return null;
    }

    return $CoolerCopyWith<$Res>(_value.cooler!, (value) {
      return _then(_value.copyWith(cooler: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RatingCopyWith<$Res>? get ratingId {
    if (_value.ratingId == null) {
      return null;
    }

    return $RatingCopyWith<$Res>(_value.ratingId!, (value) {
      return _then(_value.copyWith(ratingId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BuildPcCopyWith<$Res> implements $BuildPcCopyWith<$Res> {
  factory _$$_BuildPcCopyWith(
          _$_BuildPc value, $Res Function(_$_BuildPc) then) =
      __$$_BuildPcCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'nameOfBuild') String? name,
      User? user,
      Motherboard? motherboard,
      @JsonKey(name: 'processor') CPU? cpu,
      @JsonKey(name: 'graphicCard') GPU? gpu,
      List<Ram>? ram,
      PowerSupply? powerSupply,
      List<Hdd>? hdd,
      List<Ssd>? ssd,
      PcCase? pcCase,
      Cooler? cooler,
      int countOfLikes,
      Rating? ratingId,
      int totalPrice});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $MotherboardCopyWith<$Res>? get motherboard;
  @override
  $CPUCopyWith<$Res>? get cpu;
  @override
  $GPUCopyWith<$Res>? get gpu;
  @override
  $PowerSupplyCopyWith<$Res>? get powerSupply;
  @override
  $PcCaseCopyWith<$Res>? get pcCase;
  @override
  $CoolerCopyWith<$Res>? get cooler;
  @override
  $RatingCopyWith<$Res>? get ratingId;
}

/// @nodoc
class __$$_BuildPcCopyWithImpl<$Res>
    extends _$BuildPcCopyWithImpl<$Res, _$_BuildPc>
    implements _$$_BuildPcCopyWith<$Res> {
  __$$_BuildPcCopyWithImpl(_$_BuildPc _value, $Res Function(_$_BuildPc) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? user = freezed,
    Object? motherboard = freezed,
    Object? cpu = freezed,
    Object? gpu = freezed,
    Object? ram = freezed,
    Object? powerSupply = freezed,
    Object? hdd = freezed,
    Object? ssd = freezed,
    Object? pcCase = freezed,
    Object? cooler = freezed,
    Object? countOfLikes = null,
    Object? ratingId = freezed,
    Object? totalPrice = null,
  }) {
    return _then(_$_BuildPc(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      motherboard: freezed == motherboard
          ? _value.motherboard
          : motherboard // ignore: cast_nullable_to_non_nullable
              as Motherboard?,
      cpu: freezed == cpu
          ? _value.cpu
          : cpu // ignore: cast_nullable_to_non_nullable
              as CPU?,
      gpu: freezed == gpu
          ? _value.gpu
          : gpu // ignore: cast_nullable_to_non_nullable
              as GPU?,
      ram: freezed == ram
          ? _value._ram
          : ram // ignore: cast_nullable_to_non_nullable
              as List<Ram>?,
      powerSupply: freezed == powerSupply
          ? _value.powerSupply
          : powerSupply // ignore: cast_nullable_to_non_nullable
              as PowerSupply?,
      hdd: freezed == hdd
          ? _value._hdd
          : hdd // ignore: cast_nullable_to_non_nullable
              as List<Hdd>?,
      ssd: freezed == ssd
          ? _value._ssd
          : ssd // ignore: cast_nullable_to_non_nullable
              as List<Ssd>?,
      pcCase: freezed == pcCase
          ? _value.pcCase
          : pcCase // ignore: cast_nullable_to_non_nullable
              as PcCase?,
      cooler: freezed == cooler
          ? _value.cooler
          : cooler // ignore: cast_nullable_to_non_nullable
              as Cooler?,
      countOfLikes: null == countOfLikes
          ? _value.countOfLikes
          : countOfLikes // ignore: cast_nullable_to_non_nullable
              as int,
      ratingId: freezed == ratingId
          ? _value.ratingId
          : ratingId // ignore: cast_nullable_to_non_nullable
              as Rating?,
      totalPrice: null == totalPrice
          ? _value.totalPrice
          : totalPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BuildPc extends _BuildPc {
  const _$_BuildPc(
      {required this.id,
      @JsonKey(name: 'nameOfBuild') required this.name,
      required this.user,
      required this.motherboard,
      @JsonKey(name: 'processor') required this.cpu,
      @JsonKey(name: 'graphicCard') required this.gpu,
      required final List<Ram>? ram,
      required this.powerSupply,
      required final List<Hdd>? hdd,
      required final List<Ssd>? ssd,
      required this.pcCase,
      required this.cooler,
      required this.countOfLikes,
      required this.ratingId,
      required this.totalPrice})
      : _ram = ram,
        _hdd = hdd,
        _ssd = ssd,
        super._();

  factory _$_BuildPc.fromJson(Map<String, dynamic> json) =>
      _$$_BuildPcFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'nameOfBuild')
  final String? name;
  @override
  final User? user;
  @override
  final Motherboard? motherboard;
  @override
  @JsonKey(name: 'processor')
  final CPU? cpu;
  @override
  @JsonKey(name: 'graphicCard')
  final GPU? gpu;
  final List<Ram>? _ram;
  @override
  List<Ram>? get ram {
    final value = _ram;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PowerSupply? powerSupply;
  final List<Hdd>? _hdd;
  @override
  List<Hdd>? get hdd {
    final value = _hdd;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Ssd>? _ssd;
  @override
  List<Ssd>? get ssd {
    final value = _ssd;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PcCase? pcCase;
  @override
  final Cooler? cooler;
  @override
  final int countOfLikes;
  @override
  final Rating? ratingId;
  @override
  final int totalPrice;

  @override
  String toString() {
    return 'BuildPc(id: $id, name: $name, user: $user, motherboard: $motherboard, cpu: $cpu, gpu: $gpu, ram: $ram, powerSupply: $powerSupply, hdd: $hdd, ssd: $ssd, pcCase: $pcCase, cooler: $cooler, countOfLikes: $countOfLikes, ratingId: $ratingId, totalPrice: $totalPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BuildPc &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.motherboard, motherboard) ||
                other.motherboard == motherboard) &&
            (identical(other.cpu, cpu) || other.cpu == cpu) &&
            (identical(other.gpu, gpu) || other.gpu == gpu) &&
            const DeepCollectionEquality().equals(other._ram, _ram) &&
            (identical(other.powerSupply, powerSupply) ||
                other.powerSupply == powerSupply) &&
            const DeepCollectionEquality().equals(other._hdd, _hdd) &&
            const DeepCollectionEquality().equals(other._ssd, _ssd) &&
            (identical(other.pcCase, pcCase) || other.pcCase == pcCase) &&
            (identical(other.cooler, cooler) || other.cooler == cooler) &&
            (identical(other.countOfLikes, countOfLikes) ||
                other.countOfLikes == countOfLikes) &&
            (identical(other.ratingId, ratingId) ||
                other.ratingId == ratingId) &&
            (identical(other.totalPrice, totalPrice) ||
                other.totalPrice == totalPrice));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      user,
      motherboard,
      cpu,
      gpu,
      const DeepCollectionEquality().hash(_ram),
      powerSupply,
      const DeepCollectionEquality().hash(_hdd),
      const DeepCollectionEquality().hash(_ssd),
      pcCase,
      cooler,
      countOfLikes,
      ratingId,
      totalPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BuildPcCopyWith<_$_BuildPc> get copyWith =>
      __$$_BuildPcCopyWithImpl<_$_BuildPc>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BuildPcToJson(
      this,
    );
  }
}

abstract class _BuildPc extends BuildPc {
  const factory _BuildPc(
      {required final int? id,
      @JsonKey(name: 'nameOfBuild') required final String? name,
      required final User? user,
      required final Motherboard? motherboard,
      @JsonKey(name: 'processor') required final CPU? cpu,
      @JsonKey(name: 'graphicCard') required final GPU? gpu,
      required final List<Ram>? ram,
      required final PowerSupply? powerSupply,
      required final List<Hdd>? hdd,
      required final List<Ssd>? ssd,
      required final PcCase? pcCase,
      required final Cooler? cooler,
      required final int countOfLikes,
      required final Rating? ratingId,
      required final int totalPrice}) = _$_BuildPc;
  const _BuildPc._() : super._();

  factory _BuildPc.fromJson(Map<String, dynamic> json) = _$_BuildPc.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'nameOfBuild')
  String? get name;
  @override
  User? get user;
  @override
  Motherboard? get motherboard;
  @override
  @JsonKey(name: 'processor')
  CPU? get cpu;
  @override
  @JsonKey(name: 'graphicCard')
  GPU? get gpu;
  @override
  List<Ram>? get ram;
  @override
  PowerSupply? get powerSupply;
  @override
  List<Hdd>? get hdd;
  @override
  List<Ssd>? get ssd;
  @override
  PcCase? get pcCase;
  @override
  Cooler? get cooler;
  @override
  int get countOfLikes;
  @override
  Rating? get ratingId;
  @override
  int get totalPrice;
  @override
  @JsonKey(ignore: true)
  _$$_BuildPcCopyWith<_$_BuildPc> get copyWith =>
      throw _privateConstructorUsedError;
}
