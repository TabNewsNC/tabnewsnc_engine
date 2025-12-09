abstract class Constants {
  static const String apiUrl = .fromEnvironment(
    'API_URL',
    defaultValue: 'https://www.tabnews.com.br/api/v1',
  );
}
