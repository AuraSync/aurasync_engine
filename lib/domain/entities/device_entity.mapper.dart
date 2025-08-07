// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'device_entity.dart';

class DeviceEntityMapper extends ClassMapperBase<DeviceEntity> {
  DeviceEntityMapper._();

  static DeviceEntityMapper? _instance;
  static DeviceEntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DeviceEntityMapper._());
      MapperContainer.globals.useAll([InternetAddressMapper()]);
      DeviceTypeEnumMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'DeviceEntity';

  static String _$name(DeviceEntity v) => v.name;
  static const Field<DeviceEntity, String> _f$name = Field('name', _$name);
  static DeviceTypeEnum _$type(DeviceEntity v) => v.type;
  static const Field<DeviceEntity, DeviceTypeEnum> _f$type = Field(
    'type',
    _$type,
  );
  static InternetAddress _$address(DeviceEntity v) => v.address;
  static const Field<DeviceEntity, InternetAddress> _f$address = Field(
    'address',
    _$address,
  );

  @override
  final MappableFields<DeviceEntity> fields = const {
    #name: _f$name,
    #type: _f$type,
    #address: _f$address,
  };
  @override
  final bool ignoreNull = true;

  static DeviceEntity _instantiate(DecodingData data) {
    return DeviceEntity(
      name: data.dec(_f$name),
      type: data.dec(_f$type),
      address: data.dec(_f$address),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static DeviceEntity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DeviceEntity>(map);
  }

  static DeviceEntity fromJson(String json) {
    return ensureInitialized().decodeJson<DeviceEntity>(json);
  }
}

mixin DeviceEntityMappable {
  String toJson() {
    return DeviceEntityMapper.ensureInitialized().encodeJson<DeviceEntity>(
      this as DeviceEntity,
    );
  }

  Map<String, dynamic> toMap() {
    return DeviceEntityMapper.ensureInitialized().encodeMap<DeviceEntity>(
      this as DeviceEntity,
    );
  }

  DeviceEntityCopyWith<DeviceEntity, DeviceEntity, DeviceEntity> get copyWith =>
      _DeviceEntityCopyWithImpl<DeviceEntity, DeviceEntity>(
        this as DeviceEntity,
        $identity,
        $identity,
      );
  @override
  String toString() {
    return DeviceEntityMapper.ensureInitialized().stringifyValue(
      this as DeviceEntity,
    );
  }

  @override
  bool operator ==(Object other) {
    return DeviceEntityMapper.ensureInitialized().equalsValue(
      this as DeviceEntity,
      other,
    );
  }

  @override
  int get hashCode {
    return DeviceEntityMapper.ensureInitialized().hashValue(
      this as DeviceEntity,
    );
  }
}

extension DeviceEntityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DeviceEntity, $Out> {
  DeviceEntityCopyWith<$R, DeviceEntity, $Out> get $asDeviceEntity =>
      $base.as((v, t, t2) => _DeviceEntityCopyWithImpl<$R, $Out>(v, t, t2));
}

abstract class DeviceEntityCopyWith<$R, $In extends DeviceEntity, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? name, DeviceTypeEnum? type, InternetAddress? address});
  DeviceEntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _DeviceEntityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DeviceEntity, $Out>
    implements DeviceEntityCopyWith<$R, DeviceEntity, $Out> {
  _DeviceEntityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DeviceEntity> $mapper =
      DeviceEntityMapper.ensureInitialized();
  @override
  $R call({String? name, DeviceTypeEnum? type, InternetAddress? address}) =>
      $apply(
        FieldCopyWithData({
          if (name != null) #name: name,
          if (type != null) #type: type,
          if (address != null) #address: address,
        }),
      );
  @override
  DeviceEntity $make(CopyWithData data) => DeviceEntity(
    name: data.get(#name, or: $value.name),
    type: data.get(#type, or: $value.type),
    address: data.get(#address, or: $value.address),
  );

  @override
  DeviceEntityCopyWith<$R2, DeviceEntity, $Out2> $chain<$R2, $Out2>(
    Then<$Out2, $R2> t,
  ) => _DeviceEntityCopyWithImpl<$R2, $Out2>($value, $cast, t);
}

