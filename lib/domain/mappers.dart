import 'dart:io';

import 'package:dart_mappable/dart_mappable.dart';

class InternetAddressMapper extends SimpleMapper<InternetAddress> {
  const InternetAddressMapper();

  @override
  InternetAddress decode(dynamic value) {
    return InternetAddress(value as String);
  }

  @override
  dynamic encode(InternetAddress self) {
    return self.address;
  }
}
