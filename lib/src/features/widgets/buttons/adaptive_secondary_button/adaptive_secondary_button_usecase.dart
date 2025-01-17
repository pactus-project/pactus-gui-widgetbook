import 'package:fluent_ui/fluent_ui.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/request_state_enum.dart';
import 'package:pactus_gui_widgetbook/src/features/widgets/buttons/adaptive_secondary_button/adaptive_secondary_button.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

/// ## [adaptiveSecondaryButtonUseCase] Function Documentation
///
/// The `adaptiveSecondaryButtonUseCase` function demonstrates the
/// `AdaptiveSecondaryButton` widget in Widgetbook. It provides
/// interactive controls (knobs) for customizing the button's
/// properties and behavior during previews.
///
/// ### Usage:
///
/// This use case allows real-time customization of
/// the `AdaptiveSecondaryButton` widget via knobs for
/// properties such as text, request state, and enabled/disabled state.
///
/// ### Knobs:
///
/// - **[Request State]**:
///   - Type: `RequestStateEnum`
///   - Options: `loaded`, `loading`, etc. (all values from `RequestStateEnum`).
///   - Controls the current state of the button (e.g., disabled when `loading`).
///   - Default: `loaded`.
///
/// - **[Button Text]**:
///   - Type: `String`
///   - Allows customization of the text displayed on the button.
///   - Default: `'Click Me'`.
///
/// - **[Disabled]**:
///   - Type: `Boolean`
///   - Toggles the enabled/disabled state of the button.
///   - Default: `false`.

@UseCase(
    name: 'Adaptive Secondary Button with Knobs', type: AdaptiveSecondaryButton)
Widget adaptiveSecondaryButtonUseCase(BuildContext context) {
  final requestState = context.knobs.list<RequestStateEnum>(
    label: 'Request State',
    options: RequestStateEnum.values,
    initialOption: RequestStateEnum.loaded,
  );

  final text = context.knobs.string(
    label: 'Button Text',
    initialValue: 'Click Me',
    description: 'Set the text displayed on the button.',
  );

  final isDisabled = context.knobs.boolean(
    label: 'Disabled',
    initialValue: false,
    description: 'Enable or disable the button.',
  );

  return SizedBox(
    width: 200,
    child: AdaptiveSecondaryButton(
      title: text,
      requestState: requestState,
      onPressed: isDisabled
          ? null
          : () {
              debugPrint('Adaptive Secondary Button Pressed');
            },
    ),
  );
}
