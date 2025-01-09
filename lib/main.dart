import 'package:flutter/material.dart';
import 'package:pactus_gui_widgetbook/app_scaffold.dart';
import 'package:pactus_gui_widgetbook/src/core/theme/app_theme.dart';
import 'package:pactus_gui_widgetbook/src/core/theme/app_theme_data.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

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
              data: AppThemeData.lightTheme(),
            ),
            WidgetbookTheme(
              name: 'Dark',
              data: AppThemeData.darkTheme(),
            )
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
