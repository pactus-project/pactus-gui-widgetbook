import 'package:pactus_gui_widgetbook/src/features/main/language/data/language_case.dart';

class LanguageConstants {
  LanguageConstants._();
  static final LanguageCase enUS = LanguageCase(
    country: 'US',
    language: 'en',
    name: 'English',
  );

  static final LanguageCase frFR = LanguageCase(
    country: 'FR',
    language: 'fr',
    name: 'Français',
  );

  static final LanguageCase esES = LanguageCase(
    country: 'ES',
    language: 'es',
    name: 'Español',
  );

  static final List<LanguageCase> languageCases = [
    enUS,
    frFR,
    esES,
  ];
}
