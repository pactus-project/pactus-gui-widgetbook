import 'package:widgetbook/widgetbook.dart';
import 'package:flutter/widgets.dart';

class CustomizedLocalizationAddon extends WidgetbookAddon<Locale> {
  CustomizedLocalizationAddon({
    required this.locales,
    required this.localizationsDelegates,
    this.initialLocale,
  })  : assert(
          locales.isNotEmpty,
          'locales cannot be empty',
        ),
        assert(
          initialLocale == null || locales.contains(initialLocale),
          'initialLocale must be in locales',
        ),
        super(
          name: 'Locale',
        );

  final Locale? initialLocale;
  final List<Locale> locales;
  final List<LocalizationsDelegate<dynamic>> localizationsDelegates;

  @override
  List<Field> get fields {
    return [
      ListField<Locale>(
        name: 'name',
        values: locales,
        initialValue: initialLocale,
        labelBuilder: (locale) => locale.toLanguageTag(),
      ),
    ];
  }

  @override
  Locale valueFromQueryGroup(Map<String, String> group) {
    return valueOf('name', group)!;
  }

  @override
  Widget buildUseCase(
    BuildContext context,
    Widget child,
    Locale setting,
  ) {
    // This ensures that the updated locale is reflected immediately
    // It triggers a rebuild after the locale change.
    return Localizations(
      locale: setting,
      delegates: localizationsDelegates,
      child: child,
    );
  }
}
