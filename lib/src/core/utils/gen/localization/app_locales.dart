import 'dart:ui' show Locale;

class AppLocales {
  AppLocales._();

  static const translationsPath = 'lib/l10n';

  static const enUSLocale = Locale('en', 'US');
  static const frFRLocale = Locale('fr', 'FR');
  static const esESLocale = Locale('es', 'ES');

  /// Define the list of supported locales in the desired order
  static const supportedLocales = [
    enUSLocale,
    frFRLocale,
    esESLocale,
  ];
}
