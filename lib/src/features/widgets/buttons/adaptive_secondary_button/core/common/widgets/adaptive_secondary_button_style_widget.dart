import 'package:fluent_ui/fluent_ui.dart';
import 'package:pactus_gui_widgetbook/src/core/pallets/colors/app_colors.dart';
import 'package:pactus_gui_widgetbook/src/core/pallets/surface_pallet.dart';
import 'package:pactus_gui_widgetbook/src/core/theme/app_theme.dart';

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
            (states) => AppTheme.of(context).extension<SurfacePallet>()!.surface1,
      ),
    );
  }
}