import 'package:tabnewsnc_engine/src/domain/entities/news_entity.dart';
import 'package:tabnewsnc_engine/src/domain/enums/news_filter_enum.dart';
import 'package:tabnewsnc_engine/src/services/http_service.dart';

abstract class NewsRepository {
  const NewsRepository();

  Future<List<NewsEntity>> getAll({
    required NewsFilterEnum filter,
  });
}

final class NewsRepositoryImpl implements NewsRepository {
  const NewsRepositoryImpl(this._httpService);

  final HttpService _httpService;

  @override
  Future<List<NewsEntity>> getAll({
    required NewsFilterEnum filter,
  }) async {
    final response = await _httpService.getAll(
      '/contents',
      query: {
        'page': '1',
        'per_page': '30',
        'strategy': filter.value,
      },
    );

    if (response == null) return const [];
    return response.map(NewsEntityMapper.fromMap).toList();
  }
}
