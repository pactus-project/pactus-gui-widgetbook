# 1.2.0+3

- [Feature] : Add l10n localization support and configuration setup. [#8](https://github.com/pactus-project/pactus-gui-widgetbook/pull/8)
  - Replaced `easy_localization` with `l10n_flutter` for improved localization handling.
  - Added `.arb` files for managing app translations.
  - Configured `flutter gen-l10n` command for generating localization files.
  - Implemented `translations_utils.dart` for post-processing translations.
  - Updated CI pipeline to validate and ensure localization files are up-to-date.
  - Resolved conflicts in localization setup and ensured seamless integration with the app.
- [Test] : Add sample test case to validate CI pipeline improvements. [#8](https://github.com/pactus-project/pactus-gui-widgetbook/pull/8)

# 1.1.0+2

- [Feature] : Integrated Widget Book with theming, custom widgets, and devices setup. [#5](https://github.com/pactus-project/pactus-gui-widgetbook/pull/5)
  - Added `ButtonIconState` enum for button states.
  - Implemented `customButtonWidgetUseCase` for the custom button widget.
  - Created `CustomButtonWidget` for showcasing button functionality.
  - Updated `main.dart` to include widget book setup.
  - Added `main.directories` for organizing widget book structure.
  - Commented out `widget_test` temporarily.
  - Created `SurfacePallet` and `OnSurfacePallet` for theme customization.
  - Developed `AppThemeData` and `AppTheme` for theming.
  - Integrated `ThemeAddon` into `WidgetBookApp` for theme switching.
  - Created `InterTextStyles` based on Figma design.
  - Enhanced `CustomButtonWidget` with theme-specific styles.
  - Added `AppScaffold` for light and dark mode previews.
  - Added laptop and wide monitor devices to the addons section of the widget book.
- [Update] : Migrated `AppThemeData` and `AppTheme` from Material to FluentUI. [#5](https://github.com/pactus-project/pactus-gui-widgetbook/pull/5)

# 1.0.0+1

- [Feature] : Initial Flutter project setup with base app, dependencies, and documentation updates. [#2](https://github.com/pactus-project/pactus-gui-widgetbook/pull/2)
  - Set up initial Flutter project structure with a default counter app.
  - Configured `pubspec.yaml` with essential dependencies.
  - Organized application code under the `lib` folder.
  - Added `.gitignore` for Flutter and Dart-specific files.
  - Included font files for the app's UI.
  - Set up a CI configuration file for automated deployment.
  - Updated documentation files: `CHANGELOG`, `CONTRIBUTING`, `LICENSE`, and `README`.