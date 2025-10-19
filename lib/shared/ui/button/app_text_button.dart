import 'package:flutter/material.dart';
import '../text/app_text.dart';
import '../text/text_type.dart';

class AppTextButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color? color;
  final EdgeInsetsGeometry? padding;
  final double? minWidth;
  final double? height;

  const AppTextButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.color,
    this.padding,
    this.minWidth,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 8),
        minimumSize: Size(minWidth ?? 50, height ?? 36),
        foregroundColor: color ?? colorScheme.primary,
      ),
      child: AppText(
        text: label,
        type: TextType.bodyText,
        color: color ?? colorScheme.primary,
      ),
    );
  }
}
