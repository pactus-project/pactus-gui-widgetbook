import 'package:flutter/material.dart';
import 'package:pactus_gui_widgetbook/src/core/utils/gen/localization/codegen_loader.dart';

extension LocalizationExtension on BuildContext {
  String tr(String key) {
    final locale = Localizations.localeOf(this);
    final localeMap = CodegenLoader
        .mapLocales['${locale.languageCode}_${locale.countryCode}'];
    if (localeMap != null && localeMap.containsKey(key)) {
      return localeMap[key];
    }
    return key;
  }
}
