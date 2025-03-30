import 'package:fluent_ui/fluent_ui.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/padding_size_enum.dart';
import 'package:pactus_gui_widgetbook/src/core/pallets/colors/app_colors.dart';
import 'package:pactus_gui_widgetbook/src/core/theme/app_theme.dart';

ButtonStyle getFluentOutlinedButtonStyleMethod({
  required BuildContext context,
  required PaddingSizeEnum paddingSize,
  required bool isDefaultOutlinedButton,
}) {
  final theme = AppTheme.of(context);
  final borderColor = isDefaultOutlinedButton ? AppColors.borderColor : theme.accentColor;
  final foregroundColor = isDefaultOutlinedButton ? AppColors.primaryBlackColor : theme.accentColor;

  return ButtonStyle(
    padding: WidgetStateProperty.all<EdgeInsetsDirectional?>(
      EdgeInsetsDirectional.symmetric(horizontal: paddingSize.horizontalSize),
    ),
    backgroundColor: WidgetStateProperty.all<Color>(Colors.transparent),
    foregroundColor: WidgetStateProperty.all<Color>(foregroundColor),
    elevation: WidgetStateProperty.all<double>(0),
    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: borderColor, width: 1),
      ),
    ),
  );
}
