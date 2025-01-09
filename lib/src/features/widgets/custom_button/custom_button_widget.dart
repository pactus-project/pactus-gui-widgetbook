import 'package:flutter/material.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/button_icon_state_enum.dart';
import 'package:pactus_gui_widgetbook/src/core/utils/gen/localization/locale_keys.dart';
import 'package:pactus_gui_widgetbook/src/features/main/language/core/localization_extension.dart';

class CustomButtonWidget extends StatelessWidget {
  const CustomButtonWidget({
    super.key,
    this.size = 48.0,
    this.color = Colors.blue,
    this.iconState = ButtonIconState.withIcon,
  });
  final double size;
  final Color color;
  final ButtonIconState iconState;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            onPressed: () {
              // Action on button press
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Button Pressed!')),
              );
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (iconState == ButtonIconState.withIcon)
                  Icon(
                    Icons.check,
                    size: size / 2,
                    color: Colors.white,
                  ),
                  Text(context.tr(LocaleKeys.man)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
