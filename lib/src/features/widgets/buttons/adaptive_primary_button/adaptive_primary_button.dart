import 'package:fluent_ui/fluent_ui.dart';

class AdaptivePrimaryButton extends StatelessWidget {
  const AdaptivePrimaryButton(
      {super.key, required this.text, this.onPressed, required this.disabled});
  final String text;
  final VoidCallback? onPressed;
  final bool disabled;
  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: disabled ? null : onPressed,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
          if (states.contains(WidgetState.disabled)) {
            return Colors.grey[100];
          } else if (states.contains(WidgetState.pressed)) {
            return Colors.blue.darker;
          } else if (states.contains(WidgetState.hovered)) {
            return Colors.blue.dark;
          }
          return Colors.blue;
        }),
        foregroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
          if (states.contains(WidgetState.disabled)) {
            return Colors.grey[120];
          }
          return Colors.white;
        }),
        shape: WidgetStateProperty.resolveWith<OutlinedBorder?>((states) {
          return RoundedRectangleBorder(
            side: BorderSide(
              color: states.contains(WidgetState.disabled)
                  ? Colors.grey[130]
                  : Colors.blue.darker,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8),
          );
        }),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }
}
