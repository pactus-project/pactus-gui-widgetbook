import 'package:fluent_ui/fluent_ui.dart';
import 'package:pactus_gui_widgetbook/app_styles.dart';
import 'package:pactus_gui_widgetbook/src/core/pallets/colors/app_colors.dart';

class AdaptiveButtonStyle {
  static ButtonStyle getStyle(BuildContext context) {
    return ButtonStyle(
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
          side: const BorderSide(color: AppColors.borderColor, width: 1),
        ),
      ),
      foregroundColor: WidgetStateProperty.resolveWith<Color?>(
        (states) => AppTheme.of(context).extension<DarkPallet>()!.dark900,
      ),
    );
  }
}
