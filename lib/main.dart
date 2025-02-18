import 'package:fluent_ui/fluent_ui.dart';
import 'package:pactus_gui_widgetbook/app_scaffold.dart';
import 'package:pactus_gui_widgetbook/src/core/theme/app_theme.dart';
import 'package:pactus_gui_widgetbook/src/core/theme/app_theme_data.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;
import 'package:pactus_gui_widgetbook/src/core/utils/gen/localization/app_locales.dart';
import 'package:pactus_gui_widgetbook/src/core/utils/gen/localization/customized_localization_addon.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
            Devices.windows.laptop,
            Devices.windows.wideMonitor,
          ],
        ),
        AlignmentAddon(),
        ThemeAddon(
          themes: [
            WidgetbookTheme(
              name: 'Light',
              data: AppThemeData.lightTheme(AppThemeData.lightAccentColors[0]),
            ),
            WidgetbookTheme(
              name: 'Dark',
              data: AppThemeData.darkTheme(AppThemeData.darkAccentColors[0]),
            ),
          ],
          themeBuilder: (context, data, child) {
            final isLightTheme = data.brightness == Brightness.light;

            final selectedAccentColor = context.knobs.list<Color>(
              label: 'Accent Color',
              description: 'Select an accent color for the theme.',
              options: isLightTheme
                  ? AppThemeData.lightAccentColors
                  : AppThemeData.darkAccentColors,
              initialOption: isLightTheme
                  ? AppThemeData.lightAccentColors[0]
                  : AppThemeData.darkAccentColors[0],
            );

            final themeWithAccent = isLightTheme
                ? AppThemeData.lightTheme(selectedAccentColor)
                : AppThemeData.darkTheme(selectedAccentColor);

            return FluentApp(
              debugShowCheckedModeBanner: false,
              theme: themeWithAccent,
              home: AppTheme(
                themeData: themeWithAccent,
                child: AppScaffold(child: child),
              ),
            );
          },
        ),
      ],
      directories: directories,
    );
  }
}
