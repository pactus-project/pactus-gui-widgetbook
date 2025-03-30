import 'package:fluent_ui/fluent_ui.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/padding_size_enum.dart';
import 'package:pactus_gui_widgetbook/src/core/pallets/colors/app_colors.dart';
import 'package:pactus_gui_widgetbook/src/core/theme/app_theme.dart';
/// ## [getFluentOutlinedButtonStyleMethod] Documentation
///
/// This method generates a `ButtonStyle` for an outlined button in Fluent UI.
///
/// ### Parameters:
///
/// - **[context]** (`BuildContext`):
///   - Provides the current widget context.
///
/// - **[paddingSize]** (`PaddingSizeEnum`):
///   - Determines the horizontal padding of the button.
///
/// - **[isDefaultOutlinedButton]** (`bool`):
///   - If `true`, applies a default outlined button style with predefined colors.
///
/// ### Behavior:
///
/// - **Border Color:**
///   - Uses `AppColors.borderColor` if `isDefaultOutlinedButton` is `true`.
///   - Otherwise, applies `theme.accentColor`.
///
/// - **Foreground Color:**
///   - Uses `AppColors.primaryBlackColor` if `isDefaultOutlinedButton` is `true`.
///   - Otherwise, applies `theme.accentColor`.
///
/// - **Padding:**
///   - Applies horizontal padding based on `paddingSize.horizontalSize`.
///
/// - **Background Color:**
///   - Always set to `Colors.transparent` for an outlined appearance.
///
/// - **Elevation:**
///   - Set to `0` to maintain a flat look.
///
/// - **Shape:**
///   - Uses a `RoundedRectangleBorder` with a `10` pixel border radius.
///   - The border color and width are dynamically adjusted.
///

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
