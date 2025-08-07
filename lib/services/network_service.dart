import 'dart:io';

final class NetworkService {
  const NetworkService();

  Future<InternetAddress> getIPv4() async {
    const type = InternetAddressType.IPv4;
    final interfaces = await NetworkInterface.list(type: type);

    for (final interface in interfaces) {
      for (final address in interface.addresses) {
        return address;
      }
    }

    throw Exception('No IPv4 address found');
  }

  void dispose() {}
}
