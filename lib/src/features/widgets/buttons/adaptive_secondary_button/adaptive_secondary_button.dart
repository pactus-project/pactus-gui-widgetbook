import 'package:fluent_ui/fluent_ui.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/request_state_enum.dart';
import 'package:pactus_gui_widgetbook/src/features/widgets/buttons/adaptive_secondary_button/core/common/widgets/adaptive_secondary_button_style_widget.dart';
import 'package:pactus_gui_widgetbook/src/features/widgets/buttons/core/common/widgets/adaptive_button_content_widget.dart';

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
      onPressed: requestState == RequestStateEnum.loading ? null : onPressed,
      style: AdaptiveButtonStyle.getStyle(context),
      child: AdaptiveButtonContentWidget(
        title: title,
        requestState: requestState,
      ),
    );
  }
}


