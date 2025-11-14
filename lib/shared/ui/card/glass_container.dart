import 'dart:ui';
import 'package:flutter/material.dart';

class GlassContainer extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  final BorderRadiusGeometry borderRadius;
  final double blur;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final double borderWidth;

  const GlassContainer({
    super.key,
    required this.child,
    this.width,
    this.height,
    this.borderRadius = const BorderRadius.all(Radius.circular(16)),
    this.blur = 15.0,
    this.onTap,
    this.padding = const EdgeInsets.all(16),
    this.margin = const EdgeInsets.all(8),
    this.borderWidth = 1.2,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    final backgroundTint = colorScheme.surface.withOpacity(0.3);
    final borderColor = colorScheme.outline.withOpacity(0.2);

    final content = Container(
      width: width,
      height: height,
      padding: padding,
      child: child,
    );

    final glassBody = ClipRRect(
      borderRadius: borderRadius,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: Container(
          decoration: BoxDecoration(
            color: backgroundTint,
            borderRadius: borderRadius,
            border: Border.all(color: borderColor, width: borderWidth),
            boxShadow: [
              BoxShadow(
                color: colorScheme.shadow.withOpacity(0.08),
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: content,
        ),
      ),
    );

    final result = Container(
      margin: margin,
      child: onTap != null
          ? GestureDetector(onTap: onTap, child: glassBody)
          : glassBody,
    );

    return result;
  }
}
