import '../constants/base_urls.dart';

enum FlavorEnum {
  prod,
  qa;

  static FlavorEnum fromString(String? value) => FlavorEnum.values.firstWhere(
        (e) => e.name == value,
        orElse: () => FlavorEnum.prod,
      );

  String get appTitle => switch (this) {
        qa => '[QA] Seeis!',
        prod => 'Seeis!',
      };

  String get baseUrl => switch (this) {
        qa => BaseUrls.qaBaseUrl,
        prod => BaseUrls.prodBaseUrl,
      };
}
