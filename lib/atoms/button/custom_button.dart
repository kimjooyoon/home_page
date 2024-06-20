import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: theme.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0), // 또는 다른 적절한 값을 사용
          side: BorderSide(color: theme.dividerColor),
        ),
        padding:
            EdgeInsets.symmetric(vertical: theme.buttonTheme.padding.vertical),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: theme.textTheme.labelLarge
            ?.copyWith(color: theme.textTheme.bodyLarge?.color),
      ),
    );
  }
}
