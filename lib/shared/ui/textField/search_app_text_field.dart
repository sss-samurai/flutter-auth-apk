import 'package:flutter/material.dart';
import '../text/app_text.dart';
import '../text/text_type.dart';

class SearchAppTextField extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final String? hintText;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextInputType keyboardType;
  final VoidCallback? onSuffixTap;

  const SearchAppTextField({
    super.key,
    required this.label,
    this.controller,
    this.hintText,
    this.suffixIcon,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.onSuffixTap,
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
          keyboardType: keyboardType,
          decoration: InputDecoration(
            hintText: hintText,
            suffixIcon: suffixIcon != null
                ? InkWell(onTap: onSuffixTap, child: suffixIcon)
                : null,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: colorScheme.onSurface.withOpacity(0.2), // dynamic color
                width: 1.5,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}
