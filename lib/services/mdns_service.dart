import 'dart:io';

import 'package:mdns_dart/mdns_dart.dart' as mdns;

final class MDNSService {
  MDNSService();

  mdns.MDNSServer? _server;

  Future<void> register({
    required int port,
    required String text,
    required String service,
    required String instance,
    required InternetAddress address,
    String domain = 'local.',
  }) async {
    final zone = await mdns.MDNSService.create(
      port: port,
      txt: [text],
      ips: [address],
      domain: domain,
      service: service,
      instance: instance,
    );

    final config = mdns.MDNSServerConfig(
      zone: zone,
      reusePort: false,
    );

    await _server?.stop();
    _server = mdns.MDNSServer(config);
    await _server?.start();
  }

  Future<void> unregister() async {
    await _server?.stop();
  }

  Future<Stream<mdns.ServiceEntry>> lookup({
    required String service,
    String domain = 'local',
    Duration timeout = const Duration(seconds: 3),
  }) async {
    final params = mdns.QueryParams(
      domain: domain,
      timeout: timeout,
      service: service,
      reusePort: false,
    );

    final entries = await mdns.MDNSClient.query(params);
    return entries.where((service) => service.primaryAddress != null);
  }

  void dispose() {
    _server?.stop();
    _server = null;
  }
}
