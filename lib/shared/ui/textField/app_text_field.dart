import 'package:flutter/material.dart';
import '../text/app_text.dart';
import '../text/text_type.dart';
import 'package:flutter/services.dart'; // <-- Needed for input formatters

class AppTextField extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final String? hintText;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextInputType keyboardType;
  final VoidCallback? onSuffixTap;
  final bool onlyNumbers; // <-- New flag

  const AppTextField({
    super.key,
    required this.label,
    this.controller,
    this.hintText,
    this.suffixIcon,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.onSuffixTap,
    this.onlyNumbers = false, // default false
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          text: label,
          type: TextType.bodyTextBold,
          color: colorScheme.onSurface,
        ),
        const SizedBox(height: 6),
        TextField(
          controller: controller,
          obscureText: obscureText,
          keyboardType: onlyNumbers ? TextInputType.number : keyboardType,
          inputFormatters: onlyNumbers
              ? [FilteringTextInputFormatter.digitsOnly]
              : null,
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: suffixIcon != null
                ? InkWell(onTap: onSuffixTap, child: suffixIcon)
                : null,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: colorScheme.onSurface.withOpacity(0.2),
                width: 1.5,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: colorScheme.primary, width: 2.0),
            ),
          ),
        ),
      ],
    );
  }
}
