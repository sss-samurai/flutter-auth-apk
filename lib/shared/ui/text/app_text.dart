// lib/shared/ui/text/app_text.dart
import 'package:flutter/material.dart';
import 'text_type.dart';

class AppText extends StatelessWidget {
  final String text;
  final TextType type;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;
  final Color? color;

  const AppText({
    super.key,
    required this.text,
    required this.type,
    this.textAlign,
    this.maxLines,
    this.overflow,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: type.resolve(context).copyWith(color: color),
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
