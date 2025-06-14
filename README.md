# Widget Book for Pactus GUI

Welcome to the **Widget Book for Pactus GUI**! This repository serves as a comprehensive library of reusable widgets, meticulously designed for the **Pactus GUI**—a graphical interface tailored to interact with the Pactus blockchain.

---

## Key Features at a Glance

- **Explore Components**: Interact with widgets in isolation and test their behavior.
- **Theme Compatibility**: Preview widgets in light, dark, and custom themes.
- **Dynamic Testing**: Validate components in various states like loading, success, or error.
- **Interactive Customization**: Adjust widget properties and see real-time changes.
- **Comprehensive Documentation**: Embedded notes for better clarity and usage guidance.
- **Streamlined Workflow**: Design a widget once and reuse it consistently across the project.

---

## Why Use This Repository?

This repository bridges the gap between design and implementation, ensuring:

- **Consistent Design**: All components adhere to a unified design language, derived from Figma.
- **Reusable Components**: Widgets are modular and ready to be used across the Pactus GUI.
- **Efficient Development**: Streamlined workflows save time by leveraging pre-tested components. Developers can avoid redundant efforts by checking the Widget Book first to see if a component already exists before designing or implementing a new one.
- **Enhanced Collaboration**: Provides a clear visual library for developers, designers, and stakeholders, simplifying communication and feedback.
- **Improved Performance**: By reusing optimized widgets, the overall application size is reduced, code remains clean and maintainable, and development speed increases.

---

## Quick Access to the Widget Book

### **Online Access**
For an online preview of the Widget Book, click here:
[Widget Book Online Access](https://pactus-project.github.io/pactus-gui-widgetbook/)

### **Run Locally**
Follow these steps to set up the Widget Book on your local machine:

1. Clone the repository:
   ```bash
   git clone https://github.com/username/pactus-gui-widgetbook.git
   ```
2. Navigate to the project directory:
   ```bash
   cd pactus-gui-widgetbook
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Start the Widget Book:
   ```bash
   flutter run
   ```
5. Explore components using the navigation panel.

---

## Managing Themes and Colors

The Widget Book supports both light and dark themes, providing a seamless experience across modes. The theme definitions, including all color palettes, accent colors, and typography settings, are located in:

- `lib/src/core/theme/app_theme_data.dart`

This central file defines all theme-related properties for both light and dark modes. You can easily toggle between these themes in the interface to preview different visual styles.

### Customization

- **Light Theme**: Defined in `lib/src/core/theme/app_theme_data.dart` under the `lightTheme` configuration.
- **Dark Theme**: Defined in `lib/src/core/theme/app_theme_data.dart` under the `darkTheme` configuration.

To create a new theme, simply duplicate these files and adjust the styles according to your needs.

---

## Multi-Language Support

The Widget Book offers support for multiple languages, enabling users to test the widgets in different linguistic settings. Currently, the application supports three languages:

- **English**
- **French**
- **Spanish**

Users can easily switch between these languages within the interface to preview how the widgets will appear in different locales. This functionality ensures that the components are fully adaptable to different language requirements and can be tested for accurate rendering of text, alignment, and other language-specific details.

### Localization Implementation

The Widget Book uses the `l10n` (Localization) package for handling language switching and translations. The necessary language files are set up to handle the different locales and manage text translations for the application.

To switch between languages:

1. Choose your preferred language from the settings.
2. The interface and widget output will dynamically update to reflect the selected language.

This makes it easy to test how components behave with different languages and ensures that your app will be accessible to a wider audience, regardless of their language preferences.

---

## System Requirements and Dependencies

### **Compatibility**
- **Flutter Version**: Requires [Flutter 3.32.0](https://docs.flutter.dev/release/release-notes/release-notes-3.32.0) or later.
- **Dart Version**: Compatible with Dart 3.8.0 or higher.

### **Dependencies**
This project utilizes the following packages:
- `flutter_widgetbook`: Provides the Widget Book environment.
- `provider`: For efficient state management.

To install all dependencies, run:
```bash
flutter pub get
```

---

## Using and Integrating Components

### **Running the Widget Book**
1. Clone the repository and navigate to its directory.
   ```bash
   git clone <repository-url>
   ```
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Run the Widget Book:
   ```bash
   flutter run
   ```

### **Integrating Components**
To integrate a widget into the main Pactus GUI:
1. Import the component:
   ```dart
   import 'package:pactus_gui_widgetbook/components/component_name.dart';
   ```
2. Use it in your widget tree as required.

---

## Contribution Guidelines

We welcome contributions to enhance this repository! To contribute:

- Adhere to coding standards and practices.
- Document each widget comprehensively.
- Ensure compatibility with all themes and states.
- Validate functionality and write tests where applicable.
- Check the Widget Book before designing a new widget. If a similar component exists, reuse it or extend its functionality.

For detailed guidelines, see the [CONTRIBUTING.md](https://github.com/pactus-project/pactus-gui-widgetbook/blob/main/CONTRIBUTING.md) file.

---

## Looking Ahead

Future plans include:

- **Automated UI Testing**: Quickly identify and address visual inconsistencies.
- **Performance Optimization**: Analyze and improve rendering times.
- **Enhanced Search**: Find components by name or tag more efficiently.
- **Development Acceleration**: By utilizing the Widget Book, developers can create, test, and deploy components faster, ensuring a more agile workflow.

Feel free to reach out to the maintainers with questions or suggestions!
