import 'package:flutter/material.dart';
import 'package:pactus_gui_widgetbook/src/core/enum/button_icon_state_enum.dart';

class CustomButtonWidget extends StatelessWidget {
  final double size;
  final Color color;
  final ButtonIconState iconState;

  const CustomButtonWidget({
    super.key,
    this.size = 48.0,
    this.color = Colors.blue,
    this.iconState = ButtonIconState.withIcon,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        fixedSize: Size(size, size),
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
      child: iconState == ButtonIconState.withIcon
          ? Icon(
        Icons.check,
        size: size / 2,
        color: Colors.white,
      )
          : null,
    );
  }
}