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
    final borderRadius = (theme.buttonTheme.shape as RoundedRectangleBorder).borderRadius;
    final textColor = theme.textTheme.labelLarge?.color ?? Colors.white;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: theme.primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: borderRadius,
        ),
        padding: EdgeInsets.all(theme.buttonTheme.padding.horizontal),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: theme.textTheme.labelLarge?.copyWith(color: textColor),
      ),
    );
  }
}
