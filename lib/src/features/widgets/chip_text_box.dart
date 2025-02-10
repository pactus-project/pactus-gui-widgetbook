import 'package:fluent_ui/fluent_ui.dart';

class ChipTextBox extends StatelessWidget {
  const ChipTextBox({
    super.key,
    required this.backgroundColor,
    required this.onChanged,
    this.placeholder,
  });
  final Color backgroundColor;
  final String? placeholder;
  final ValueChanged<String> onChanged;
  @override
  Widget build(BuildContext context) {
    return ExcludeSemantics(
      child: TextBox(
        padding: EdgeInsets.zero,
        placeholder: placeholder,
        decoration: WidgetStateProperty.all(
          BoxDecoration(
            borderRadius: BorderRadius.circular(64),
            color: backgroundColor,
          ),
        ),
        textAlign: TextAlign.center,
        onChanged: onChanged,
      ),
    );
  }
}
