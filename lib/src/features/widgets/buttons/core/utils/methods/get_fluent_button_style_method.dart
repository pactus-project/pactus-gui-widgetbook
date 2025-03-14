import 'package:fluent_ui/fluent_ui.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/padding_size_enum.dart';

ButtonStyle getFluentButtonStyleMethod({required BuildContext context, required PaddingSizeEnum paddingSize}) {
  final theme = FluentTheme.of(context);

  return ButtonStyle(
    padding: WidgetStateProperty.all<EdgeInsetsDirectional?>(
      EdgeInsetsDirectional.symmetric(horizontal: paddingSize.horizontalSize)
    ),
    backgroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
      if (states.isDisabled) {
        return theme.accentColor.lightest;
      }
      if (states.isPressed) {
        return theme.accentColor.darker;
      }
      if (states.isHovering) {
        return theme.accentColor.dark;
      }
      return theme.accentColor;
    }),
    foregroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
      if (states.isDisabled) {
        return theme.inactiveColor;
      }
      return Colors.white;
    }),
    elevation: WidgetStateProperty.resolveWith<double>((states) {
      if (states.isPressed) {
        return 8.0;
      }
      return 0.0;
    }),
    shape: WidgetStateProperty.all(RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    )),
  );
}
