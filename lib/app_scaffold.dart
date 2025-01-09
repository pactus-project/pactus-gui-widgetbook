import 'package:flutter/material.dart';
import 'package:pactus_gui_widgetbook/src/core/theme/app_theme.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.of(context).scaffoldBackgroundColor,
      child: child,
    );
  }
}
