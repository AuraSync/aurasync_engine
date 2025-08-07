// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'device_type_enum.dart';

class DeviceTypeEnumMapper extends EnumMapper<DeviceTypeEnum> {
  DeviceTypeEnumMapper._();

  static DeviceTypeEnumMapper? _instance;
  static DeviceTypeEnumMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DeviceTypeEnumMapper._());
    }
    return _instance!;
  }

  static DeviceTypeEnum fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  DeviceTypeEnum decode(dynamic value) {
    switch (value) {
      case r'pc':
        return DeviceTypeEnum.pc;
      case r'mobile':
        return DeviceTypeEnum.mobile;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(DeviceTypeEnum self) {
    switch (self) {
      case DeviceTypeEnum.pc:
        return r'pc';
      case DeviceTypeEnum.mobile:
        return r'mobile';
    }
  }
}

extension DeviceTypeEnumMapperExtension on DeviceTypeEnum {
  String toValue() {
    DeviceTypeEnumMapper.ensureInitialized();
    return MapperContainer.globals.toValue<DeviceTypeEnum>(this) as String;
  }
}

