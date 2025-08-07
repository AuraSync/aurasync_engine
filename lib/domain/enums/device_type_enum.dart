import 'package:dart_mappable/dart_mappable.dart';

part 'device_type_enum.mapper.dart';

@MappableEnum(caseStyle: CaseStyle.snakeCase)
enum DeviceTypeEnum { pc, mobile }
