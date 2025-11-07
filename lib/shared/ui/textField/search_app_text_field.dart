import 'package:flutter/material.dart';

class SearchAppTextField extends StatelessWidget {
  final String label;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextInputType keyboardType;
  final VoidCallback? onSuffixTap;

  const SearchAppTextField({
    super.key,
    required this.label,
    this.controller,
    this.suffixIcon,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.onSuffixTap,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: label,
        suffixIcon: suffixIcon != null
            ? IconButton(
                onPressed: onSuffixTap,
                icon: suffixIcon!,
                splashRadius: 20,
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        // Padding and background
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 12,
        ),
        filled: true,
        fillColor:
            Theme.of(context).inputDecorationTheme.fillColor ??
            Colors.grey[200],
      ),
    );
  }
}
