import 'package:fluent_ui/fluent_ui.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/padding_size_enum.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/request_state_enum.dart';
import 'package:pactus_gui_widgetbook/src/features/widgets/buttons/core/common/widgets/adaptive_button_content_widget.dart';
import 'package:pactus_gui_widgetbook/src/features/widgets/buttons/core/enums/button_type_enum.dart';
import 'package:pactus_gui_widgetbook/src/features/widgets/buttons/core/utils/methods/get_fluent_button_style_method.dart';

class AdaptivePrimaryButton extends StatelessWidget {
  const AdaptivePrimaryButton({
    super.key,
    required this.requestState,
    this.onPressed,
    this.suffixIcon,
    this.prefixIcon,
    this.title,
    required this.buttonType,
    this.baseIcon,
    required this.paddingSize,
  });

  final RequestStateEnum requestState;
  final Function()? onPressed;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final String? title;
  final ButtonTypeEnum buttonType;
  final IconData? baseIcon;
  final PaddingSizeEnum paddingSize;

  @override
  Widget build(BuildContext context) {
    return Button(
      style: getFluentButtonStyleMethod(context: context, paddingSize: paddingSize),
      onPressed: (requestState == RequestStateEnum.loading) ? null : onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: paddingSize.horizontalSize),
        child: AdaptiveButtonContent(
          requestState: requestState,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          title: title,
          loadingDotColor: FluentTheme.of(context).accentColor.lightest,
          buttonType: buttonType,
          icon: baseIcon,
        ),
      ),
    );
  }
}

