import 'dart:async';

import 'package:aurasync_engine/domain/entities/device_entity.dart';
import 'package:aurasync_engine/domain/enums/device_type_enum.dart';
import 'package:aurasync_engine/services/device_service.dart';
import 'package:aurasync_engine/services/mdns_service.dart';
import 'package:aurasync_engine/services/network_service.dart';

const service = '_aurasync._tcp';

abstract class AuthRepository {
  const AuthRepository();

  Future<void> advertise(DeviceTypeEnum type);
  Future<Stream<DeviceEntity>> discover(DeviceTypeEnum type);
  void dispose();
}

final class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl(
    this._mdnsService,
    this._deviceService,
    this._networkService,
  );

  final MDNSService _mdnsService;
  final DeviceService _deviceService;
  final NetworkService _networkService;

  @override
  Future<void> advertise(DeviceTypeEnum type) async {
    final name = await _deviceService.getName();
    final address = await _networkService.getIPv4();
    final device = DeviceEntity(name: name, type: type, address: address);

    await _mdnsService.register(
      port: 9090,
      address: address,
      service: service,
      instance: type.name,
      text: device.toJson(),
    );
  }

  @override
  Future<Stream<DeviceEntity>> discover(DeviceTypeEnum type) async {
    final services = await _mdnsService.lookup(
      service: service,
      timeout: const Duration(seconds: 10),
    );

    final devices = services.map((service) {
      final device = DeviceEntityMapper.fromJson(service.info);
      return device;
    });

    return devices.where((device) => device.type == type);
  }

  @override
  void dispose() {
    _mdnsService.dispose();
    _deviceService.dispose();
    _networkService.dispose();
  }
}
