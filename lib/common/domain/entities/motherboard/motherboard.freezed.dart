// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'motherboard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Motherboard _$MotherboardFromJson(Map<String, dynamic> json) {
  return _Motherboard.fromJson(json);
}

/// @nodoc
mixin _$Motherboard {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  MotherboardSocket get socket => throw _privateConstructorUsedError;
  List<CPUGeneration> get cpuGenerations => throw _privateConstructorUsedError;
  MotherboardChipset get motherboardChipset =>
      throw _privateConstructorUsedError;
  FormFactor get formFactor => throw _privateConstructorUsedError;
  MotherboardProducers get motherboardProducer =>
      throw _privateConstructorUsedError;
  int get maxTdpOfProcessors => throw _privateConstructorUsedError;
  int get memorySlots => throw _privateConstructorUsedError;
  int get supportedMemoryFrequency => throw _privateConstructorUsedError;
  int get maxAmountOfRam => throw _privateConstructorUsedError;
  MotherboardNetwork get motherboardNetwork =>
      throw _privateConstructorUsedError;
  bool get bluetooth => throw _privateConstructorUsedError;
  bool get wifi => throw _privateConstructorUsedError;
  CPUPcieVersion get cpuPcieVersion =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  int get pci_express_x16 =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  int get pci_express_x4 =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  int get pci_express_x1 => throw _privateConstructorUsedError;
  int get sata3 => throw _privateConstructorUsedError;
  int get m2 => throw _privateConstructorUsedError;
  bool get dSub => throw _privateConstructorUsedError;
  int get dvi => throw _privateConstructorUsedError;
  int get hdmi => throw _privateConstructorUsedError;
  int get displayPort => throw _privateConstructorUsedError;
  int get usb_2_0 => throw _privateConstructorUsedError;
  int get usb_3_0 =>
      throw _privateConstructorUsedError; // ignore: non_constant_identifier_names
  int get usb_type_c => throw _privateConstructorUsedError;
  bool get digitalAudioJack => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get recommendedPrice => throw _privateConstructorUsedError;
  PerformanceLevel get performanceLevel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MotherboardCopyWith<Motherboard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MotherboardCopyWith<$Res> {
  factory $MotherboardCopyWith(
          Motherboard value, $Res Function(Motherboard) then) =
      _$MotherboardCopyWithImpl<$Res, Motherboard>;
  @useResult
  $Res call(
      {int id,
      String name,
      MotherboardSocket socket,
      List<CPUGeneration> cpuGenerations,
      MotherboardChipset motherboardChipset,
      FormFactor formFactor,
      MotherboardProducers motherboardProducer,
      int maxTdpOfProcessors,
      int memorySlots,
      int supportedMemoryFrequency,
      int maxAmountOfRam,
      MotherboardNetwork motherboardNetwork,
      bool bluetooth,
      bool wifi,
      CPUPcieVersion cpuPcieVersion,
      int pci_express_x16,
      int pci_express_x4,
      int pci_express_x1,
      int sata3,
      int m2,
      bool dSub,
      int dvi,
      int hdmi,
      int displayPort,
      int usb_2_0,
      int usb_3_0,
      int usb_type_c,
      bool digitalAudioJack,
      String description,
      int recommendedPrice,
      PerformanceLevel performanceLevel});

  $MotherboardSocketCopyWith<$Res> get socket;
  $MotherboardChipsetCopyWith<$Res> get motherboardChipset;
  $FormFactorCopyWith<$Res> get formFactor;
  $MotherboardProducersCopyWith<$Res> get motherboardProducer;
  $MotherboardNetworkCopyWith<$Res> get motherboardNetwork;
  $CPUPcieVersionCopyWith<$Res> get cpuPcieVersion;
  $PerformanceLevelCopyWith<$Res> get performanceLevel;
}

/// @nodoc
class _$MotherboardCopyWithImpl<$Res, $Val extends Motherboard>
    implements $MotherboardCopyWith<$Res> {
  _$MotherboardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? socket = null,
    Object? cpuGenerations = null,
    Object? motherboardChipset = null,
    Object? formFactor = null,
    Object? motherboardProducer = null,
    Object? maxTdpOfProcessors = null,
    Object? memorySlots = null,
    Object? supportedMemoryFrequency = null,
    Object? maxAmountOfRam = null,
    Object? motherboardNetwork = null,
    Object? bluetooth = null,
    Object? wifi = null,
    Object? cpuPcieVersion = null,
    Object? pci_express_x16 = null,
    Object? pci_express_x4 = null,
    Object? pci_express_x1 = null,
    Object? sata3 = null,
    Object? m2 = null,
    Object? dSub = null,
    Object? dvi = null,
    Object? hdmi = null,
    Object? displayPort = null,
    Object? usb_2_0 = null,
    Object? usb_3_0 = null,
    Object? usb_type_c = null,
    Object? digitalAudioJack = null,
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
      socket: null == socket
          ? _value.socket
          : socket // ignore: cast_nullable_to_non_nullable
              as MotherboardSocket,
      cpuGenerations: null == cpuGenerations
          ? _value.cpuGenerations
          : cpuGenerations // ignore: cast_nullable_to_non_nullable
              as List<CPUGeneration>,
      motherboardChipset: null == motherboardChipset
          ? _value.motherboardChipset
          : motherboardChipset // ignore: cast_nullable_to_non_nullable
              as MotherboardChipset,
      formFactor: null == formFactor
          ? _value.formFactor
          : formFactor // ignore: cast_nullable_to_non_nullable
              as FormFactor,
      motherboardProducer: null == motherboardProducer
          ? _value.motherboardProducer
          : motherboardProducer // ignore: cast_nullable_to_non_nullable
              as MotherboardProducers,
      maxTdpOfProcessors: null == maxTdpOfProcessors
          ? _value.maxTdpOfProcessors
          : maxTdpOfProcessors // ignore: cast_nullable_to_non_nullable
              as int,
      memorySlots: null == memorySlots
          ? _value.memorySlots
          : memorySlots // ignore: cast_nullable_to_non_nullable
              as int,
      supportedMemoryFrequency: null == supportedMemoryFrequency
          ? _value.supportedMemoryFrequency
          : supportedMemoryFrequency // ignore: cast_nullable_to_non_nullable
              as int,
      maxAmountOfRam: null == maxAmountOfRam
          ? _value.maxAmountOfRam
          : maxAmountOfRam // ignore: cast_nullable_to_non_nullable
              as int,
      motherboardNetwork: null == motherboardNetwork
          ? _value.motherboardNetwork
          : motherboardNetwork // ignore: cast_nullable_to_non_nullable
              as MotherboardNetwork,
      bluetooth: null == bluetooth
          ? _value.bluetooth
          : bluetooth // ignore: cast_nullable_to_non_nullable
              as bool,
      wifi: null == wifi
          ? _value.wifi
          : wifi // ignore: cast_nullable_to_non_nullable
              as bool,
      cpuPcieVersion: null == cpuPcieVersion
          ? _value.cpuPcieVersion
          : cpuPcieVersion // ignore: cast_nullable_to_non_nullable
              as CPUPcieVersion,
      pci_express_x16: null == pci_express_x16
          ? _value.pci_express_x16
          : pci_express_x16 // ignore: cast_nullable_to_non_nullable
              as int,
      pci_express_x4: null == pci_express_x4
          ? _value.pci_express_x4
          : pci_express_x4 // ignore: cast_nullable_to_non_nullable
              as int,
      pci_express_x1: null == pci_express_x1
          ? _value.pci_express_x1
          : pci_express_x1 // ignore: cast_nullable_to_non_nullable
              as int,
      sata3: null == sata3
          ? _value.sata3
          : sata3 // ignore: cast_nullable_to_non_nullable
              as int,
      m2: null == m2
          ? _value.m2
          : m2 // ignore: cast_nullable_to_non_nullable
              as int,
      dSub: null == dSub
          ? _value.dSub
          : dSub // ignore: cast_nullable_to_non_nullable
              as bool,
      dvi: null == dvi
          ? _value.dvi
          : dvi // ignore: cast_nullable_to_non_nullable
              as int,
      hdmi: null == hdmi
          ? _value.hdmi
          : hdmi // ignore: cast_nullable_to_non_nullable
              as int,
      displayPort: null == displayPort
          ? _value.displayPort
          : displayPort // ignore: cast_nullable_to_non_nullable
              as int,
      usb_2_0: null == usb_2_0
          ? _value.usb_2_0
          : usb_2_0 // ignore: cast_nullable_to_non_nullable
              as int,
      usb_3_0: null == usb_3_0
          ? _value.usb_3_0
          : usb_3_0 // ignore: cast_nullable_to_non_nullable
              as int,
      usb_type_c: null == usb_type_c
          ? _value.usb_type_c
          : usb_type_c // ignore: cast_nullable_to_non_nullable
              as int,
      digitalAudioJack: null == digitalAudioJack
          ? _value.digitalAudioJack
          : digitalAudioJack // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $MotherboardSocketCopyWith<$Res> get socket {
    return $MotherboardSocketCopyWith<$Res>(_value.socket, (value) {
      return _then(_value.copyWith(socket: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MotherboardChipsetCopyWith<$Res> get motherboardChipset {
    return $MotherboardChipsetCopyWith<$Res>(_value.motherboardChipset,
        (value) {
      return _then(_value.copyWith(motherboardChipset: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FormFactorCopyWith<$Res> get formFactor {
    return $FormFactorCopyWith<$Res>(_value.formFactor, (value) {
      return _then(_value.copyWith(formFactor: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MotherboardProducersCopyWith<$Res> get motherboardProducer {
    return $MotherboardProducersCopyWith<$Res>(_value.motherboardProducer,
        (value) {
      return _then(_value.copyWith(motherboardProducer: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MotherboardNetworkCopyWith<$Res> get motherboardNetwork {
    return $MotherboardNetworkCopyWith<$Res>(_value.motherboardNetwork,
        (value) {
      return _then(_value.copyWith(motherboardNetwork: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CPUPcieVersionCopyWith<$Res> get cpuPcieVersion {
    return $CPUPcieVersionCopyWith<$Res>(_value.cpuPcieVersion, (value) {
      return _then(_value.copyWith(cpuPcieVersion: value) as $Val);
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
abstract class _$$_MotherboardCopyWith<$Res>
    implements $MotherboardCopyWith<$Res> {
  factory _$$_MotherboardCopyWith(
          _$_Motherboard value, $Res Function(_$_Motherboard) then) =
      __$$_MotherboardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      MotherboardSocket socket,
      List<CPUGeneration> cpuGenerations,
      MotherboardChipset motherboardChipset,
      FormFactor formFactor,
      MotherboardProducers motherboardProducer,
      int maxTdpOfProcessors,
      int memorySlots,
      int supportedMemoryFrequency,
      int maxAmountOfRam,
      MotherboardNetwork motherboardNetwork,
      bool bluetooth,
      bool wifi,
      CPUPcieVersion cpuPcieVersion,
      int pci_express_x16,
      int pci_express_x4,
      int pci_express_x1,
      int sata3,
      int m2,
      bool dSub,
      int dvi,
      int hdmi,
      int displayPort,
      int usb_2_0,
      int usb_3_0,
      int usb_type_c,
      bool digitalAudioJack,
      String description,
      int recommendedPrice,
      PerformanceLevel performanceLevel});

  @override
  $MotherboardSocketCopyWith<$Res> get socket;
  @override
  $MotherboardChipsetCopyWith<$Res> get motherboardChipset;
  @override
  $FormFactorCopyWith<$Res> get formFactor;
  @override
  $MotherboardProducersCopyWith<$Res> get motherboardProducer;
  @override
  $MotherboardNetworkCopyWith<$Res> get motherboardNetwork;
  @override
  $CPUPcieVersionCopyWith<$Res> get cpuPcieVersion;
  @override
  $PerformanceLevelCopyWith<$Res> get performanceLevel;
}

/// @nodoc
class __$$_MotherboardCopyWithImpl<$Res>
    extends _$MotherboardCopyWithImpl<$Res, _$_Motherboard>
    implements _$$_MotherboardCopyWith<$Res> {
  __$$_MotherboardCopyWithImpl(
      _$_Motherboard _value, $Res Function(_$_Motherboard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? socket = null,
    Object? cpuGenerations = null,
    Object? motherboardChipset = null,
    Object? formFactor = null,
    Object? motherboardProducer = null,
    Object? maxTdpOfProcessors = null,
    Object? memorySlots = null,
    Object? supportedMemoryFrequency = null,
    Object? maxAmountOfRam = null,
    Object? motherboardNetwork = null,
    Object? bluetooth = null,
    Object? wifi = null,
    Object? cpuPcieVersion = null,
    Object? pci_express_x16 = null,
    Object? pci_express_x4 = null,
    Object? pci_express_x1 = null,
    Object? sata3 = null,
    Object? m2 = null,
    Object? dSub = null,
    Object? dvi = null,
    Object? hdmi = null,
    Object? displayPort = null,
    Object? usb_2_0 = null,
    Object? usb_3_0 = null,
    Object? usb_type_c = null,
    Object? digitalAudioJack = null,
    Object? description = null,
    Object? recommendedPrice = null,
    Object? performanceLevel = null,
  }) {
    return _then(_$_Motherboard(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      socket: null == socket
          ? _value.socket
          : socket // ignore: cast_nullable_to_non_nullable
              as MotherboardSocket,
      cpuGenerations: null == cpuGenerations
          ? _value._cpuGenerations
          : cpuGenerations // ignore: cast_nullable_to_non_nullable
              as List<CPUGeneration>,
      motherboardChipset: null == motherboardChipset
          ? _value.motherboardChipset
          : motherboardChipset // ignore: cast_nullable_to_non_nullable
              as MotherboardChipset,
      formFactor: null == formFactor
          ? _value.formFactor
          : formFactor // ignore: cast_nullable_to_non_nullable
              as FormFactor,
      motherboardProducer: null == motherboardProducer
          ? _value.motherboardProducer
          : motherboardProducer // ignore: cast_nullable_to_non_nullable
              as MotherboardProducers,
      maxTdpOfProcessors: null == maxTdpOfProcessors
          ? _value.maxTdpOfProcessors
          : maxTdpOfProcessors // ignore: cast_nullable_to_non_nullable
              as int,
      memorySlots: null == memorySlots
          ? _value.memorySlots
          : memorySlots // ignore: cast_nullable_to_non_nullable
              as int,
      supportedMemoryFrequency: null == supportedMemoryFrequency
          ? _value.supportedMemoryFrequency
          : supportedMemoryFrequency // ignore: cast_nullable_to_non_nullable
              as int,
      maxAmountOfRam: null == maxAmountOfRam
          ? _value.maxAmountOfRam
          : maxAmountOfRam // ignore: cast_nullable_to_non_nullable
              as int,
      motherboardNetwork: null == motherboardNetwork
          ? _value.motherboardNetwork
          : motherboardNetwork // ignore: cast_nullable_to_non_nullable
              as MotherboardNetwork,
      bluetooth: null == bluetooth
          ? _value.bluetooth
          : bluetooth // ignore: cast_nullable_to_non_nullable
              as bool,
      wifi: null == wifi
          ? _value.wifi
          : wifi // ignore: cast_nullable_to_non_nullable
              as bool,
      cpuPcieVersion: null == cpuPcieVersion
          ? _value.cpuPcieVersion
          : cpuPcieVersion // ignore: cast_nullable_to_non_nullable
              as CPUPcieVersion,
      pci_express_x16: null == pci_express_x16
          ? _value.pci_express_x16
          : pci_express_x16 // ignore: cast_nullable_to_non_nullable
              as int,
      pci_express_x4: null == pci_express_x4
          ? _value.pci_express_x4
          : pci_express_x4 // ignore: cast_nullable_to_non_nullable
              as int,
      pci_express_x1: null == pci_express_x1
          ? _value.pci_express_x1
          : pci_express_x1 // ignore: cast_nullable_to_non_nullable
              as int,
      sata3: null == sata3
          ? _value.sata3
          : sata3 // ignore: cast_nullable_to_non_nullable
              as int,
      m2: null == m2
          ? _value.m2
          : m2 // ignore: cast_nullable_to_non_nullable
              as int,
      dSub: null == dSub
          ? _value.dSub
          : dSub // ignore: cast_nullable_to_non_nullable
              as bool,
      dvi: null == dvi
          ? _value.dvi
          : dvi // ignore: cast_nullable_to_non_nullable
              as int,
      hdmi: null == hdmi
          ? _value.hdmi
          : hdmi // ignore: cast_nullable_to_non_nullable
              as int,
      displayPort: null == displayPort
          ? _value.displayPort
          : displayPort // ignore: cast_nullable_to_non_nullable
              as int,
      usb_2_0: null == usb_2_0
          ? _value.usb_2_0
          : usb_2_0 // ignore: cast_nullable_to_non_nullable
              as int,
      usb_3_0: null == usb_3_0
          ? _value.usb_3_0
          : usb_3_0 // ignore: cast_nullable_to_non_nullable
              as int,
      usb_type_c: null == usb_type_c
          ? _value.usb_type_c
          : usb_type_c // ignore: cast_nullable_to_non_nullable
              as int,
      digitalAudioJack: null == digitalAudioJack
          ? _value.digitalAudioJack
          : digitalAudioJack // ignore: cast_nullable_to_non_nullable
              as bool,
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
class _$_Motherboard implements _Motherboard {
  const _$_Motherboard(
      {required this.id,
      required this.name,
      required this.socket,
      required final List<CPUGeneration> cpuGenerations,
      required this.motherboardChipset,
      required this.formFactor,
      required this.motherboardProducer,
      required this.maxTdpOfProcessors,
      required this.memorySlots,
      required this.supportedMemoryFrequency,
      required this.maxAmountOfRam,
      required this.motherboardNetwork,
      required this.bluetooth,
      required this.wifi,
      required this.cpuPcieVersion,
      required this.pci_express_x16,
      required this.pci_express_x4,
      required this.pci_express_x1,
      required this.sata3,
      required this.m2,
      required this.dSub,
      required this.dvi,
      required this.hdmi,
      required this.displayPort,
      required this.usb_2_0,
      required this.usb_3_0,
      required this.usb_type_c,
      required this.digitalAudioJack,
      required this.description,
      required this.recommendedPrice,
      required this.performanceLevel})
      : _cpuGenerations = cpuGenerations;

  factory _$_Motherboard.fromJson(Map<String, dynamic> json) =>
      _$$_MotherboardFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final MotherboardSocket socket;
  final List<CPUGeneration> _cpuGenerations;
  @override
  List<CPUGeneration> get cpuGenerations {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cpuGenerations);
  }

  @override
  final MotherboardChipset motherboardChipset;
  @override
  final FormFactor formFactor;
  @override
  final MotherboardProducers motherboardProducer;
  @override
  final int maxTdpOfProcessors;
  @override
  final int memorySlots;
  @override
  final int supportedMemoryFrequency;
  @override
  final int maxAmountOfRam;
  @override
  final MotherboardNetwork motherboardNetwork;
  @override
  final bool bluetooth;
  @override
  final bool wifi;
  @override
  final CPUPcieVersion cpuPcieVersion;
// ignore: non_constant_identifier_names
  @override
  final int pci_express_x16;
// ignore: non_constant_identifier_names
  @override
  final int pci_express_x4;
// ignore: non_constant_identifier_names
  @override
  final int pci_express_x1;
  @override
  final int sata3;
  @override
  final int m2;
  @override
  final bool dSub;
  @override
  final int dvi;
  @override
  final int hdmi;
  @override
  final int displayPort;
  @override
  final int usb_2_0;
  @override
  final int usb_3_0;
// ignore: non_constant_identifier_names
  @override
  final int usb_type_c;
  @override
  final bool digitalAudioJack;
  @override
  final String description;
  @override
  final int recommendedPrice;
  @override
  final PerformanceLevel performanceLevel;

  @override
  String toString() {
    return 'Motherboard(id: $id, name: $name, socket: $socket, cpuGenerations: $cpuGenerations, motherboardChipset: $motherboardChipset, formFactor: $formFactor, motherboardProducer: $motherboardProducer, maxTdpOfProcessors: $maxTdpOfProcessors, memorySlots: $memorySlots, supportedMemoryFrequency: $supportedMemoryFrequency, maxAmountOfRam: $maxAmountOfRam, motherboardNetwork: $motherboardNetwork, bluetooth: $bluetooth, wifi: $wifi, cpuPcieVersion: $cpuPcieVersion, pci_express_x16: $pci_express_x16, pci_express_x4: $pci_express_x4, pci_express_x1: $pci_express_x1, sata3: $sata3, m2: $m2, dSub: $dSub, dvi: $dvi, hdmi: $hdmi, displayPort: $displayPort, usb_2_0: $usb_2_0, usb_3_0: $usb_3_0, usb_type_c: $usb_type_c, digitalAudioJack: $digitalAudioJack, description: $description, recommendedPrice: $recommendedPrice, performanceLevel: $performanceLevel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Motherboard &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.socket, socket) || other.socket == socket) &&
            const DeepCollectionEquality()
                .equals(other._cpuGenerations, _cpuGenerations) &&
            (identical(other.motherboardChipset, motherboardChipset) ||
                other.motherboardChipset == motherboardChipset) &&
            (identical(other.formFactor, formFactor) ||
                other.formFactor == formFactor) &&
            (identical(other.motherboardProducer, motherboardProducer) ||
                other.motherboardProducer == motherboardProducer) &&
            (identical(other.maxTdpOfProcessors, maxTdpOfProcessors) ||
                other.maxTdpOfProcessors == maxTdpOfProcessors) &&
            (identical(other.memorySlots, memorySlots) ||
                other.memorySlots == memorySlots) &&
            (identical(
                    other.supportedMemoryFrequency, supportedMemoryFrequency) ||
                other.supportedMemoryFrequency == supportedMemoryFrequency) &&
            (identical(other.maxAmountOfRam, maxAmountOfRam) ||
                other.maxAmountOfRam == maxAmountOfRam) &&
            (identical(other.motherboardNetwork, motherboardNetwork) ||
                other.motherboardNetwork == motherboardNetwork) &&
            (identical(other.bluetooth, bluetooth) ||
                other.bluetooth == bluetooth) &&
            (identical(other.wifi, wifi) || other.wifi == wifi) &&
            (identical(other.cpuPcieVersion, cpuPcieVersion) ||
                other.cpuPcieVersion == cpuPcieVersion) &&
            (identical(other.pci_express_x16, pci_express_x16) ||
                other.pci_express_x16 == pci_express_x16) &&
            (identical(other.pci_express_x4, pci_express_x4) ||
                other.pci_express_x4 == pci_express_x4) &&
            (identical(other.pci_express_x1, pci_express_x1) ||
                other.pci_express_x1 == pci_express_x1) &&
            (identical(other.sata3, sata3) || other.sata3 == sata3) &&
            (identical(other.m2, m2) || other.m2 == m2) &&
            (identical(other.dSub, dSub) || other.dSub == dSub) &&
            (identical(other.dvi, dvi) || other.dvi == dvi) &&
            (identical(other.hdmi, hdmi) || other.hdmi == hdmi) &&
            (identical(other.displayPort, displayPort) ||
                other.displayPort == displayPort) &&
            (identical(other.usb_2_0, usb_2_0) || other.usb_2_0 == usb_2_0) &&
            (identical(other.usb_3_0, usb_3_0) || other.usb_3_0 == usb_3_0) &&
            (identical(other.usb_type_c, usb_type_c) ||
                other.usb_type_c == usb_type_c) &&
            (identical(other.digitalAudioJack, digitalAudioJack) ||
                other.digitalAudioJack == digitalAudioJack) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.recommendedPrice, recommendedPrice) ||
                other.recommendedPrice == recommendedPrice) &&
            (identical(other.performanceLevel, performanceLevel) ||
                other.performanceLevel == performanceLevel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        socket,
        const DeepCollectionEquality().hash(_cpuGenerations),
        motherboardChipset,
        formFactor,
        motherboardProducer,
        maxTdpOfProcessors,
        memorySlots,
        supportedMemoryFrequency,
        maxAmountOfRam,
        motherboardNetwork,
        bluetooth,
        wifi,
        cpuPcieVersion,
        pci_express_x16,
        pci_express_x4,
        pci_express_x1,
        sata3,
        m2,
        dSub,
        dvi,
        hdmi,
        displayPort,
        usb_2_0,
        usb_3_0,
        usb_type_c,
        digitalAudioJack,
        description,
        recommendedPrice,
        performanceLevel
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MotherboardCopyWith<_$_Motherboard> get copyWith =>
      __$$_MotherboardCopyWithImpl<_$_Motherboard>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MotherboardToJson(
      this,
    );
  }
}

abstract class _Motherboard implements Motherboard {
  const factory _Motherboard(
      {required final int id,
      required final String name,
      required final MotherboardSocket socket,
      required final List<CPUGeneration> cpuGenerations,
      required final MotherboardChipset motherboardChipset,
      required final FormFactor formFactor,
      required final MotherboardProducers motherboardProducer,
      required final int maxTdpOfProcessors,
      required final int memorySlots,
      required final int supportedMemoryFrequency,
      required final int maxAmountOfRam,
      required final MotherboardNetwork motherboardNetwork,
      required final bool bluetooth,
      required final bool wifi,
      required final CPUPcieVersion cpuPcieVersion,
      required final int pci_express_x16,
      required final int pci_express_x4,
      required final int pci_express_x1,
      required final int sata3,
      required final int m2,
      required final bool dSub,
      required final int dvi,
      required final int hdmi,
      required final int displayPort,
      required final int usb_2_0,
      required final int usb_3_0,
      required final int usb_type_c,
      required final bool digitalAudioJack,
      required final String description,
      required final int recommendedPrice,
      required final PerformanceLevel performanceLevel}) = _$_Motherboard;

  factory _Motherboard.fromJson(Map<String, dynamic> json) =
      _$_Motherboard.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  MotherboardSocket get socket;
  @override
  List<CPUGeneration> get cpuGenerations;
  @override
  MotherboardChipset get motherboardChipset;
  @override
  FormFactor get formFactor;
  @override
  MotherboardProducers get motherboardProducer;
  @override
  int get maxTdpOfProcessors;
  @override
  int get memorySlots;
  @override
  int get supportedMemoryFrequency;
  @override
  int get maxAmountOfRam;
  @override
  MotherboardNetwork get motherboardNetwork;
  @override
  bool get bluetooth;
  @override
  bool get wifi;
  @override
  CPUPcieVersion get cpuPcieVersion;
  @override // ignore: non_constant_identifier_names
  int get pci_express_x16;
  @override // ignore: non_constant_identifier_names
  int get pci_express_x4;
  @override // ignore: non_constant_identifier_names
  int get pci_express_x1;
  @override
  int get sata3;
  @override
  int get m2;
  @override
  bool get dSub;
  @override
  int get dvi;
  @override
  int get hdmi;
  @override
  int get displayPort;
  @override
  int get usb_2_0;
  @override
  int get usb_3_0;
  @override // ignore: non_constant_identifier_names
  int get usb_type_c;
  @override
  bool get digitalAudioJack;
  @override
  String get description;
  @override
  int get recommendedPrice;
  @override
  PerformanceLevel get performanceLevel;
  @override
  @JsonKey(ignore: true)
  _$$_MotherboardCopyWith<_$_Motherboard> get copyWith =>
      throw _privateConstructorUsedError;
}
