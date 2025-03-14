import 'package:fluent_ui/fluent_ui.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/padding_size_enum.dart';
import 'package:pactus_gui_widgetbook/src/core/theme/app_theme.dart';

ButtonStyle getFluentButtonStyleMethod({
  required BuildContext context,
  required PaddingSizeEnum paddingSize,
  required bool isOutlined,
}) {
  final theme = AppTheme.of(context);

  return ButtonStyle(
    padding: WidgetStateProperty.all<EdgeInsetsDirectional?>(
      EdgeInsetsDirectional.symmetric(horizontal: paddingSize.horizontalSize),
    ),
    backgroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
      if (isOutlined) {
        return Colors.transparent;
      }
      if (states.isDisabled) {
        return theme.accentColor.lightest;
      }
      if (states.isPressed) {
        return theme.accentColor.darker;
      }
      if (states.isHovered) {
        return theme.accentColor.dark;
      }
      return theme.accentColor;
    }),
    foregroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
      if (isOutlined) {
        return theme.accentColor.lightest;
      }
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
      side: isOutlined
          ? BorderSide(color: theme.accentColor, width: 1)
          : BorderSide.none,
    )),
  );
}
