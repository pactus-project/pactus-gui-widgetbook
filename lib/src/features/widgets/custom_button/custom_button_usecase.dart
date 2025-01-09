import 'package:flutter/material.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/button_icon_state_enum.dart';
import 'package:pactus_gui_widgetbook/src/features/widgets/custom_button/custom_button_widget.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Custom Button with Knobs', type: CustomButtonWidget)
Widget customButtonWidgetUseCase(BuildContext context) {
  // Knob for button size
  final size = context.knobs.double.slider(
    label: 'Button Size',
    initialValue: 48.0,
    min: 24.0,
    max: 100.0,
    description: 'Set the size of the button.',
  );

  // Knob for button color
  final color = context.knobs.color(
    label: 'Button Color',
    initialValue: Colors.blue,
    description: 'Set the color of the button.',
  );

  // Knob for button icon state
  final iconStateString = context.knobs.string(
    label: 'Icon State',
    initialValue: 'withIcon',
    description:
        'Choose whether the button has an icon or not. Use "withIcon" or "withoutIcon".',
  );

  // Map string to ButtonIconState enum
  final iconState = iconStateString == 'withIcon'
      ? ButtonIconState.withIcon
      : ButtonIconState.withoutIcon;

  return CustomButtonWidget(
    size: size,
    color: color,
    iconState: iconState,
  );
}
