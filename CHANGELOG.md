# 1.15.0+22
- [Update] : Update some color palettes and component color adjustments [#49](https://github.com/pactus-project/pactus-gui-widgetbook/pull/50)
  - update(core:pallets): Updated colors in `AccentPallet` for better visual consistency
  - update(buttons): Adjusted hover color in `AdaptivePrimaryButton` for improved interaction feedback
  - update(core:pallets): Optimized contrast for `disableColor` in `PanePallet` for accessibility compliance
  - update(core:pallets): Added high-contrast variants to `GrayPallet` for dark/light mode support
  - update(core:textStyles): Renamed styles in `InterTextStyles` for clearer semantic usage
  - update(core:theme): remove  `darkBlue` from `lightAccentColors` and `darkAccentColors`

# 1.14.0+21
- [Refactor] : Improve color and shape of `ChipTextBox` component [#47](https://github.com/pactus-project/pactus-gui-widgetbook/pull/48)
  - improve text readability with updated color scheme 
  - improve border and shape 

# 1.13.3+20
- [Refactor] : Fix scaffold background color according figma design [#45](https://github.com/pactus-project/pactus-gui-widgetbook/pull/46)
 - update(core): update font height value according figma spec
 - refactor(core): fix scaffold background color according figma design

# 1.13.2+19
- [Refactor] : update all text  styles to height `1.0` [#41](https://github.com/pactus-project/pactus-gui-widgetbook/pull/42)

# 1.13.1+18
- [Refactor] : Remove height property from text styles. [#41](https://github.com/pactus-project/pactus-gui-widgetbook/pull/42)

# 1.13.0+17
- [Update] : Add properties to button widgets. [#39](https://github.com/pactus-project/pactus-gui-widgetbook/pull/40)
  - Added `textOverflow` property to control text truncation behavior
  - Added `minHeight` property for minimum button height constraints
  - Added `maxWidth` property for maximum button width constraints
  - Added `borderRadius` property for customizable corner rounding
  - Updated all button factory constructors to support new properties
  - Updated Widgetbook use cases to demonstrate new properties

- [Refactor] : Fix null safety when buttons title is null. [#39](https://github.com/pactus-project/pactus-gui-widgetbook/pull/40)

# 1.12.0+16
- [Fix] : Implement proper localization setup for FluentApp. [#37](https://github.com/pactus-project/pactus-gui-widgetbook/pull/38)
  - Updated `FluentApp` widget configuration.
  - Added missing localization delegates.

- [Fix] : Add null-safety to tr() context extension. [#37](https://github.com/pactus-project/pactus-gui-widgetbook/pull/38)
  - Updated `LocalizationExtension` to handle null keys.
  - Ensures empty string fallback for null/missing translations.

- [Fix] : Implement tr() for button titles in related use cases. [#37](https://github.com/pactus-project/pactus-gui-widgetbook/pull/38)
  - Replaced hardcoded button titles with localized strings.
  - Remove all button widgets to use `context.tr()`.

# 1.11.1+15
- [Fix] : Corrected the color of icons in text buttons that have icons. [#30](https://github.com/pactus-project/pactus-gui-widgetbook/pull/36)
  - Updated `AdaptiveTextButton` class.


# 1.11.0+14
- [Feature] : Implement `AdaptiveTextButton` widget & its use case. [#30](https://github.com/pactus-project/pactus-gui-widgetbook/pull/35)
  - Added/created `AdaptiveTextButton`.
  - Added/created `adaptiveTextButtonUseCase`.
  - Updated `mai.directories` file.

- [Test] : Added tests for `AdaptiveTextButton` in different states. [#30](https://github.com/pactus-project/pactus-gui-widgetbook/pull/35)

- [Fix] : correct foreground color in adaptive text button.  [#30](https://github.com/pactus-project/pactus-gui-widgetbook/pull/35)
  - remove conditions in foreground color & remove `isDisables` knob from it`s use case

- [Fix] : add isDefaultTextButton to AdaptiveTextButton. [#30](https://github.com/pactus-project/pactus-gui-widgetbook/pull/35)
  - update AdaptiveTextButton class & it`s use case

# 1.10.1+13
- [Feature] : Implement `AdaptiveSecondaryButton` widget & its use cases. [#33](https://github.com/pactus-project/pactus-gui-widgetbook/pull/34)
  - Added/created `AdaptiveSecondaryButton`.
  - Added/created `adaptiveSecondaryButtonUseCase` method.
  - Added/created `getFluentOutlinedButtonStyleMethod`.
  - Updated `AppColors` & added `primaryBlackColor` to it.
- [Fix] : Fix font size after changing padding in buttons core. [#33](https://github.com/pactus-project/pactus-gui-widgetbook/pull/34)
  - Removed deprecated `getTextStyleBasedOnPadding` method.

- [Fix] : Fix color of contents in outline button. [#33](https://github.com/pactus-project/pactus-gui-widgetbook/pull/34)
  - Updated color resolution logic for outline button contents.

- [Test] : Added tests for `AdaptiveSecondaryButton` in different states. [#33](https://github.com/pactus-project/pactus-gui-widgetbook/pull/34)

# 1.9.1+12
- [Refactor] : Make every title in `AdaptivePrimaryButton` multilingual support. [#31](https://github.com/pactus-project/pactus-gui-widgetbook/pull/32)
  - Updated `AdaptiveButtonContent`.

- [Refactor] : Re-arrange import files to create access from outside this package. [#31](https://github.com/pactus-project/pactus-gui-widgetbook/pull/32)
  - Updated & renamed `app_core`.
  - Updated & renamed `app_widgets`.

- [Refactor] : Refactored `AdaptivePrimaryButton` widget. [#31](https://github.com/pactus-project/pactus-gui-widgetbook/pull/32)
  - Updated `getFluentButtonStyleMethod`.
  - Added `isDisabled` & removed `isOutlined` from `AdaptivePrimaryButton` use case.
  - Updated `AdaptivePrimaryButton` tests.
  - Updated `AdaptivePrimaryButton` & added `MouseRegion` to it.

- [Update] : Replaced `Button` widget with `FilledButton` in `AdaptivePrimaryButton`. [#31](https://github.com/pactus-project/pactus-gui-widgetbook/pull/32)
  - Updated `AdaptivePrimaryButton` tests.

- [Fix] : update `AdaptivePrimaryButton` styles. [#31](https://github.com/pactus-project/pactus-gui-widgetbook/pull/32)
  - update a text style in `getTextStyleBasedOnPadding`
  - rename `loadingDotColor` to `loadingProgressRingColor`
  - correct `foregroundColor` in `getFluentButtonStyleMethod`

# 1.9.0+11
- [Refactor] : Update `AdaptivePrimaryButton` & its use case. [#28](https://github.com/pactus-project/pactus-gui-widgetbook/pull/29)
  - Removed `AdaptiveSecondaryButton` & `adaptiveSecondaryButtonUseCase`.
  - Removed `AdaptiveSecondaryButton` tests.
  - Removed `AdaptiveButtonStyle`.
  - Added/created `PaddingSizeEnum`.
  - Added/created `getFluentButtonStyleMethod`.
  - Added/created `ButtonTypeEnum`.
  - Added/created `getTextStyleBasedOnPadding`.
  - Updated `adaptivePrimaryButtonUseCase`.
  - Updated `adaptivePrimaryButton` tests.
  - Updated `AdaptivePrimaryButton`.
  - Updated `AdaptiveButtonContent`.

- [Tests] : Updated `AdaptivePrimaryButton` tests in different states of button. [#28](https://github.com/pactus-project/pactus-gui-widgetbook/pull/29)


# 1.8.0+10
- [Feature] : Add support for accent color in the project. [#26](https://github.com/pactus-project/pactus-gui-widgetbook/pull/27)
  - Introduced an extension for managing accent colors.
  - Added an extension for foreground color, used on accent color.
  - Updated addons to showcase new themes by combining theme mode and accent color.

# 1.7.0+9
- [Feature] : Define `PaneNavigationPalette` as a color palette extension for Fluent UI in Flutter. [#24](https://github.com/pactus-project/pactus-gui-widgetbook/pull/25)
  - Implemented `PaneNavigationPalette` to manage text colors in the `PaneNavigation` slide.

# 1.6.0+8
- [Feature] : Implement `PalletColors` enum and `fromPalletColor` extension for centralized color management.[#22](https://github.com/pactus-project/pactus-gui-widgetbook/pull/23)
  - Introduced `PalletColors` to standardize color usage across the project.
  - Added `fromPalletColor` extension for easy color conversion and consistency.

- [Refactor] : Rename and refine `VioletPallet` property names for better consistency.[#22](https://github.com/pactus-project/pactus-gui-widgetbook/pull/23)

- [Update] : Improve UI design of `ChipTextBox` and create a Widgetbook use-case.[#22](https://github.com/pactus-project/pactus-gui-widgetbook/pull/23)
  - Updated `ChipTextBox` styling for better UX and Fluent UI alignment.
  - Added a dedicated Widgetbook use-case for `ChipTextBox` to test its customization options.

- [Fix] : Fix decoration of `ChipTextBox`.[#22](https://github.com/pactus-project/pactus-gui-widgetbook/pull/23)
  - Resolved an issue where the decoration property was incorrectly assigned.
  - Remove print statement usage.

- [Test] : Write tests for `ChipTextBox`.[#22](https://github.com/pactus-project/pactus-gui-widgetbook/pull/23)

- [ci] : Fix pipeline issues on flutter version.[#22](https://github.com/pactus-project/pactus-gui-widgetbook/pull/23)

# 1.5.0+7
- [Feat] : Impl `color palettes` to project [#21](https://github.com/pactus-project/pactus-gui-widgetbook/pull/21)
  - add/create `BlueGrayPallet`
  - add/create `BluePallet`
  - add/create `LightPallet`
  - add/create `FuchsiaPallet`
  - add/create `GrayPallet`
  - add/create `GreenPallet`
  - add/create `LightPallet`
  - add/create `OrangePallet`
  - add/create `PinkPallet`
  - add/create `PurplePallet`
  - add/create `RedPallet`
  - add/create `RosePallet`
  - add/create `VioletPallet`
  - add/create `YellowPallet`

- [Update] : Remove old color palettes [#21](https://github.com/pactus-project/pactus-gui-widgetbook/pull/21)
  - remove `SurfacePallet`
  - remove `OnSurfacePallet`
  - update `AppThemeData` & color palettes to it
  - update `app_styles.dart`

# 1.4.0+6

- [Refactor]: Update `InterTextStyles` and `AppThemeData` typography to reflect new Figma design updates. [#19](https://github.com/pactus-project/pactus-gui-widgetbook/pull/19)
  - Refactored `InterTextStyles` to match the latest changes in the Figma design.
  - Updated typography settings in `AppThemeData` to improve consistency and align with new design specifications.


# 1.3.2+5

- [CI]: update ci-cd pipeline for github page deploy. [#7](https://github.com/pactus-project/pactus-gui-widgetbook/pull/7)

# 1.3.0+4

- [Feature]: Add `CustomTextWidget` for localized text display and `Widgetbook` integration. [#12](https://github.com/pactus-project/pactus-gui-widgetbook/pull/12)
  - Created `CustomTextWidget` to display localized text with customizable styles.
  - Added `customTextWidgetUseCase` for testing Fluent UI text styles in Widgetbook.

- [Fix]: Integrate `AppScaffold` and enhance screen layout. [#12](https://github.com/pactus-project/pactus-gui-widgetbook/pull/12)
- [Fix]: Update `CustomTextWidget` to use `context.tr()` for handling localization. [#12](https://github.com/pactus-project/pactus-gui-widgetbook/pull/12)
- [Fix]: Resolve material dependency warnings in `pubspec.yaml`. [#12](https://github.com/pactus-project/pactus-gui-widgetbook/pull/12)

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