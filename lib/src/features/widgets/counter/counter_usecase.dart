import 'package:flutter/material.dart';
import 'counter_widget.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Counter with Knobs', type: CounterWidget)
Widget counterWidgetUseCase(BuildContext context) {
  return Center(
    child: CounterWidget(
      initialValue: 0,
      onChanged: (value) {
        debugPrint('Counter value changed to: $value');
      },
    ),
  );
}
