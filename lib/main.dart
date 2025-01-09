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

/// ## [WidgetBookApp] Class Documentation
///
/// The `WidgetBookApp` class is the main entry point for
/// the Widgetbook application.
/// It defines the Widgetbook configuration, including the devices,
/// themes, and addons used for visualizing and testing widgets.
///
/// ### Usage:
///
/// The `WidgetBookApp` sets up a Widgetbook environment with
/// predefined themes, devices, and alignment options.
/// It enables developers to test their widgets in different
/// contexts and layouts.
///
/// ### Addons:
///
/// - **[DeviceFrameAddon]**:
///   - Includes a list of devices for testing widgets.
///   - **Devices**:
///     - `Devices.ios.iPhone13`: Simulates an iPhone 13 device.
///     - `Devices.windows.laptop`: Simulates a standard laptop.
///     - `Devices.windows.wideMonitor`: Simulates a widescreen monitor.
///
/// - **[AlignmentAddon]**:
///   - Allows testing widget alignment within the parent container.
///
/// - **[ThemeAddon]**:
///   - Provides two themes for testing:
///     - **Light Theme**: Uses `AppThemeData.lightTheme()` for a
///     bright interface.
///     - **Dark Theme**: Uses `AppThemeData.darkTheme()` for a
///     darker interface.
///   - Includes a custom theme builder that wraps widgets with
///   `AppTheme` and `AppScaffold`.
///
/// ### Properties:
///
/// - **[directories]**:
///   - Dynamically generated list of widget directories.
///   - Facilitates organizing and testing widgets within Widgetbook.
///

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
