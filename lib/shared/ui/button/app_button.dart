import 'package:flutter/material.dart';
import '../text/app_text.dart';
import '../text/text_type.dart';

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final bool isPrimary;
  final double borderRadius;
  final double minWidth;
  final double height;

  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.isPrimary = true,
    this.borderRadius = 30,
    this.minWidth = 140,
    this.height = 45,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final backgroundColor = isPrimary
        ? theme.colorScheme.primary
        : theme.colorScheme.surfaceVariant;

    final foregroundColor = isPrimary
        ? theme.colorScheme.onPrimary
        : theme.colorScheme.onSurfaceVariant;

    return SizedBox(
      width: minWidth,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          elevation: 2,
        ),
        onPressed: onPressed,
        child: AppText(
          text: label,
          type: TextType.buttonText,
          color: foregroundColor,
        ),
      ),
    );
  }
}
