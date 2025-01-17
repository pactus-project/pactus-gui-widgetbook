import 'package:fluent_ui/fluent_ui.dart';
import 'package:pactus_gui_widgetbook/app_styles.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/request_state_enum.dart';
/// ## [AdaptiveButtonContentWidget] Class Documentation
///
/// The `AdaptiveButtonContentWidget` is a stateless widget responsible for
/// rendering the content of adaptive buttons. It adjusts its display based
/// on the provided `requestState`.
///
/// ### Usage:
///
/// This widget is typically used inside adaptive button components
/// (`AdaptivePrimaryButton`, `AdaptiveSecondaryButton`) to dynamically
/// render the button's content depending on its state.
///
/// ### Properties:
///
/// - **[title]** (String):
///   - The text to display on the button when the state is
///   `RequestStateEnum.loaded` or `RequestStateEnum.initial`.
///
/// - **[requestState]** (RequestStateEnum):
///   - Determines the content of the button:
///     - `loading`: Displays an empty widget (placeholder for future loading UI).
///     - `initial`/`loaded`: Displays the button title centered inside the button.
///     - `error`: Displays an empty widget (placeholder for future error UI).
///

class AdaptiveButtonContentWidget extends StatelessWidget {
  const AdaptiveButtonContentWidget({
    super.key,
    required this.title,
    required this.requestState,
  });

  final String title;
  final RequestStateEnum requestState;

  @override
  Widget build(BuildContext context) {
    switch (requestState) {
      /// TODO (by Pouria): add loading & error state after defining by UI team
      case RequestStateEnum.loading:
        return const SizedBox();
      case RequestStateEnum.initial:
      case RequestStateEnum.loaded:
        return SizedBox(
          height: 32,
          child: Center(
            child: Text(
              title,
              style: InterTextStyles.body.copyWith(
                color:
                    AppTheme.of(context).extension<SurfacePallet>()!.surface3!,
              ),
            ),
          ),
        );
      case RequestStateEnum.error:
        return const SizedBox();
    }
  }
}
