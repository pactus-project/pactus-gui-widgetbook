import 'package:fluent_ui/fluent_ui.dart';
import 'package:pactus_gui_widgetbook/src/features/widgets/buttons/adaptive_primary_button/adaptive_primary_button.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

@UseCase(name: 'Fluent Button with Knobs', type: AdaptivePrimaryButton)
Widget fluentButtonUseCase(BuildContext context) {
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

  return Center(
    child: AdaptivePrimaryButton(
      text: text,
      disabled: isDisabled,
      onPressed: isDisabled
          ? null
          : () {
              debugPrint('Button Pressed');
            },
    ),
  );
}
