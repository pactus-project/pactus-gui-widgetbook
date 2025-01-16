import 'package:fluent_ui/fluent_ui.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/request_state_enum.dart';
import 'package:pactus_gui_widgetbook/src/features/widgets/buttons/adaptive_primary_button/adaptive_primary_button.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Fluent Button with Knobs', type: AdaptivePrimaryButton)
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
