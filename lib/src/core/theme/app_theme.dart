import 'package:fluent_ui/fluent_ui.dart';

class AppTheme extends InheritedWidget {
  final FluentThemeData themeData;

  const AppTheme({
    required this.themeData,
    required super.child,
    super.key,
  });

  static FluentThemeData of(BuildContext context) {
    final scope =
        context.dependOnInheritedWidgetOfExactType<AppTheme>()!.themeData;
    return scope;
  }

  @override
  bool updateShouldNotify(AppTheme oldWidget) {
    return themeData != oldWidget.themeData;
  }
}
