// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'news_filter_enum.dart';

class NewsFilterEnumMapper extends EnumMapper<NewsFilterEnum> {
  NewsFilterEnumMapper._();

  static NewsFilterEnumMapper? _instance;
  static NewsFilterEnumMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = NewsFilterEnumMapper._());
    }
    return _instance!;
  }

  static NewsFilterEnum fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  NewsFilterEnum decode(dynamic value) {
    switch (value) {
      case r'old':
        return NewsFilterEnum.old;
      case r'recent':
        return NewsFilterEnum.recent;
      case r'relevant':
        return NewsFilterEnum.relevant;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(NewsFilterEnum self) {
    switch (self) {
      case NewsFilterEnum.old:
        return r'old';
      case NewsFilterEnum.recent:
        return r'recent';
      case NewsFilterEnum.relevant:
        return r'relevant';
    }
  }
}

extension NewsFilterEnumMapperExtension on NewsFilterEnum {
  String toValue() {
    NewsFilterEnumMapper.ensureInitialized();
    return MapperContainer.globals.toValue<NewsFilterEnum>(this) as String;
  }
}

