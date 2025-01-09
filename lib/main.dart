import 'package:flutter/material.dart';
import 'package:pactus_gui_widgetbook/app_scaffold.dart';
import 'package:pactus_gui_widgetbook/src/core/utils/gen/localization/app_locales.dart';
import 'package:pactus_gui_widgetbook/src/core/theme/app_theme.dart';
import 'package:pactus_gui_widgetbook/src/core/theme/app_theme_data.dart';
import 'package:pactus_gui_widgetbook/src/core/utils/gen/localization/customized_localization_addon.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/widgets.dart';
import 'main.directories.g.dart';

void main() {
  runApp(const WidgetBookApp());
}

@widgetbook.App()
class WidgetBookApp extends StatelessWidget {
  const WidgetBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook(
      appBuilder: (context, child) {
        return child;
      },
      addons: [
        CustomizedLocalizationAddon(
          locales: AppLocales.supportedLocales,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          initialLocale: AppLocales.supportedLocales.first,
        ),
        DeviceFrameAddon(
          devices: [
            Devices.ios.iPhone13,
          ],
        ),
        AlignmentAddon(),
        ThemeAddon(
          themes: [
            WidgetbookTheme(
              name: 'Light',
              data: AppThemeData.lightTheme(),
            ),
            WidgetbookTheme(
              name: 'Dark',
              data: AppThemeData.darkTheme(),
            ),
          ],
          themeBuilder: (context, data, child) {
            return AppTheme(
              themeData: data,
              child: AppScaffold(child: child),
            );
          },
        ),
      ],
      // The [directories] variable does not exist yet,
      // it will be generated in the next step
      directories: directories,
    );
  }
}
