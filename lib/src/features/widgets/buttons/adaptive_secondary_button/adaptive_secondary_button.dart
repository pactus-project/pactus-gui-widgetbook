import 'package:fluent_ui/fluent_ui.dart';
import 'package:pactus_gui_widgetbook/app_styles.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/request_state_enum.dart';
import 'package:pactus_gui_widgetbook/src/core/pallets/colors/app_colors.dart';
import 'package:pactus_gui_widgetbook/src/features/widgets/buttons/core/common/widgets/adaptive_button_content_widget.dart';

/// ## [AdaptiveSecondaryButton] Class Documentation
///
/// The `AdaptiveSecondaryButton` class is a customizable widget designed
/// for secondary actions. It features dynamic styling and behavior
/// based on its state and integrates with Fluent UI themes.
///
/// ### Usage:
///
/// This button provides a consistent secondary action style, allowing
/// developers to customize its text, callback action,
/// and state through its properties.
///
/// ### Properties:
///
/// - **[title]** (String):
///   - The text label displayed on the button.
///
/// - **[onPressed]** (VoidCallback?):
///   - The callback function triggered when the button is pressed.
///   - Disabled if the `requestState` is `RequestStateEnum.loading`.
///
/// - **[requestState]** (RequestStateEnum):
///   - Represents the current state of the button (e.g., loading, loaded).
///

class AdaptiveSecondaryButton extends StatelessWidget {
  const AdaptiveSecondaryButton({
    super.key,
    required this.title,
    this.onPressed,
    required this.requestState,
  });

  final String title;
  final VoidCallback? onPressed;
  final RequestStateEnum requestState;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: (requestState == RequestStateEnum.loading) ? null : onPressed,
      style: ButtonStyle(
        shape: WidgetStateProperty.resolveWith<OutlinedBorder?>((states) {
          if (states.contains(WidgetState.disabled)) {
            return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
              side: const BorderSide(
                color: AppColors.borderColor,
                width: 1,
              ),
            );
          }
          if (states.contains(WidgetState.pressed)) {
            return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
              side: const BorderSide(
                color: AppColors.borderColor,
                width: 1,
              ),
            );
          }
          if (states.contains(WidgetState.hovered)) {
            return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
              side: const BorderSide(
                color: AppColors.borderColor,
                width: 1,
              ),
            );
          }
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
            side: const BorderSide(
              color: AppColors.borderColor,
              width: 1,
            ),
          );
        }),
        foregroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
          if (states.contains(WidgetState.disabled)) {
            return AppTheme.of(context).extension<SurfacePallet>()!.surface1!;
          } else if (states.contains(WidgetState.pressed)) {
            return AppTheme.of(context).extension<SurfacePallet>()!.surface1!;
          } else if (states.contains(WidgetState.hovered)) {
            return AppTheme.of(context).extension<SurfacePallet>()!.surface1!;
          }
          return AppTheme.of(context).extension<SurfacePallet>()!.surface1;
        }),
      ),
      child: AdaptiveButtonContentWidget(
        title: title,
        requestState: requestState,
      ),
    );
  }
}
