import 'package:dart_mappable/dart_mappable.dart';

part 'news_filter_enum.mapper.dart';

@MappableEnum(caseStyle: .snakeCase)
enum NewsFilterEnum {
  old('old'),
  recent('new'),
  relevant('relevant')
  ;

  const NewsFilterEnum(this.value);

  final String value;
}
