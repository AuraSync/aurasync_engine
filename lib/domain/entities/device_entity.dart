import 'dart:io';

import 'package:aurasync_engine/domain/enums/device_type_enum.dart';
import 'package:aurasync_engine/domain/mappers.dart';
import 'package:dart_mappable/dart_mappable.dart';
import 'package:flutter/foundation.dart';

part 'device_entity.mapper.dart';

@immutable
@MappableClass(
  ignoreNull: true,
  caseStyle: CaseStyle.snakeCase,
  includeCustomMappers: [InternetAddressMapper()],
)
final class DeviceEntity with DeviceEntityMappable {
  const DeviceEntity({
    required this.name,
    required this.type,
    required this.address,
  });

  final String name;
  final DeviceTypeEnum type;
  final InternetAddress address;
}
