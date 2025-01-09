import 'dart:ui' show Locale;

class CodegenLoader {
  const CodegenLoader();

  Future<Map<String, dynamic>?> load(
    String path,
    Map<String, dynamic> localeMap,
  ) {
    return Future.value(
      mapLocales["${Locale(localeMap["language"], localeMap["country"])}"],
    );
  }

  static const Map<String, dynamic> enUS = {
    'app_name': 'Pactus GUI (EN)',
    'man': 'Man',
    'woman': 'Woman',
  };
  static const Map<String, dynamic> frFR = {
    'app_name': 'Pactus GUI (FR)',
    'man': 'Homme',
    'woman': 'Femme',
  };
  static const Map<String, dynamic> esES = {
    'app_name': 'Pactus GUI (ES)',
    'man': 'Hombre',
    'woman': 'Mujer',
  };

  static const Map<String, Map<String, dynamic>> mapLocales = {
    'en_US': enUS,
    'fr_FR': frFR,
    'es_ES': esES,
  };
}
