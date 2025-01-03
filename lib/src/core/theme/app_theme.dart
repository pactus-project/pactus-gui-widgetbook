import 'package:flutter/material.dart';

class AppTheme extends InheritedWidget {
  final ThemeData themeData;

  const AppTheme({
    required this.themeData,
    required super.child,
    super.key,
  });

  static ThemeData of(BuildContext context) {
    final scope =
        context.dependOnInheritedWidgetOfExactType<AppTheme>()!.themeData;
    return scope;
  }

  @override
  bool updateShouldNotify(AppTheme oldWidget) {
    return themeData != oldWidget.themeData;
  }
}
