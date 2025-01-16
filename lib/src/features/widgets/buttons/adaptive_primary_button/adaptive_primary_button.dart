import 'package:fluent_ui/fluent_ui.dart';
import 'package:pactus_gui_widgetbook/app_styles.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/request_state_enum.dart';
import 'package:pactus_gui_widgetbook/src/features/widgets/buttons/core/common/widgets/adaptive_button_content_widget.dart';

class AdaptivePrimaryButton extends StatelessWidget {
  const AdaptivePrimaryButton({
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
    final theme = FluentTheme.of(context);

    return FilledButton(
      onPressed: (requestState == RequestStateEnum.loading) ? null : onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
          if (states.contains(WidgetState.disabled)) {
            return AppTheme.of(context).extension<SurfacePallet>()!.surface1!;
          } else if (states.contains(WidgetState.pressed)) {
            return theme.accentColor.darker;
          } else if (states.contains(WidgetState.hovered)) {
            return theme.accentColor.darker;
          }
          return theme.accentColor;
        }),
        shape: WidgetStateProperty.resolveWith<OutlinedBorder?>((states) {
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          );
        }),
      ),
      child: AdaptiveButtonContentWidget(
        title: title,
        requestState: requestState,
      ),
    );
  }
}
