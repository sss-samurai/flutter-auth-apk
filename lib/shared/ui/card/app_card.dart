import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  final BorderRadiusGeometry borderRadius;
  final double elevation;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;

  const AppCard({
    super.key,
    required this.child,
    this.width,
    this.height,
    this.borderRadius = const BorderRadius.all(Radius.circular(12)),
    this.elevation = 2,
    this.onTap,
    this.padding = const EdgeInsets.all(12),
    this.margin = const EdgeInsets.all(8),
  });

  @override
  Widget build(BuildContext context) {
    final cardContent = Container(
      width: width,
      height: height,
      padding: padding,
      child: child,
    );

    final card = Material(
      elevation: elevation,
      borderRadius: borderRadius,
      color: Theme.of(context).cardColor, // automatically from theme
      child: cardContent,
    );

    if (onTap != null) {
      return GestureDetector(onTap: onTap, child: card);
    }

    return card;
  }
}
