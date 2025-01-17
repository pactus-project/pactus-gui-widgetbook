import 'package:fluent_ui/fluent_ui.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/request_state_enum.dart';
import 'package:pactus_gui_widgetbook/src/features/widgets/buttons/adaptive_primary_button/adaptive_primary_button.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';
/// ## [adaptivePrimaryButtonUseCase] Function Documentation
///
/// The `adaptivePrimaryButtonUseCase` function is a Widgetbook
/// use case for demonstrating and testing
/// the `AdaptivePrimaryButton` widget. It leverages Widgetbook
/// knobs to provide dynamic control over the
/// button's properties and state.
///
/// ### Usage:
///
/// This use case allows users to interactively customize and preview
/// the `AdaptivePrimaryButton` widget's behavior and appearance by
/// adjusting its properties using Widgetbook knobs.
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
///

@UseCase(
    name: 'Adaptive Primary Button with Knobs', type: AdaptivePrimaryButton)
Widget adaptivePrimaryButtonUseCase(BuildContext context) {
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
    child: AdaptivePrimaryButton(
      title: text,
      requestState: requestState,
      onPressed: isDisabled
          ? null
          : () {
              debugPrint('Adaptive Primary Button Pressed');
            },
    ),
  );
}
