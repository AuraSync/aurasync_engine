import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

final class DeviceService {
  DeviceService() {
    _device = DeviceInfoPlugin();
  }

  late final DeviceInfoPlugin _device;

  Future<String> getName() async {
    final String name;
    if (Platform.isAndroid) {
      final info = await _device.androidInfo;
      name = info.name;
    } else if (Platform.isIOS) {
      final info = await _device.iosInfo;
      name = info.name;
    } else if (Platform.isLinux) {
      final info = await _device.linuxInfo;
      name = info.name;
    } else if (Platform.isMacOS) {
      final info = await _device.macOsInfo;
      name = info.computerName;
    } else if (Platform.isWindows) {
      final info = await _device.windowsInfo;
      name = info.computerName;
    } else {
      name = Platform.localHostname;
    }

    return name;
  }

  void dispose() {}
}
