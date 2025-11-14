import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  final String title;
  final Widget? leading;
  final List<Widget>? actions;
  final VoidCallback? onLeadingTap;
  final double? height;
  final Color? backgroundColor;
  final TextStyle? titleStyle;
  final BoxShadow? shadow;

  const AppHeader({
    super.key,
    required this.title,
    this.leading,
    this.actions,
    this.onLeadingTap,
    this.height,
    this.backgroundColor,
    this.titleStyle,
    this.shadow,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final iconTheme = theme.iconTheme;
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    final effectiveHeight = height ?? kToolbarHeight;
    final effectiveBackgroundColor = backgroundColor ?? colorScheme.surface;
    final effectiveTitleStyle =
        titleStyle ??
        textTheme.titleLarge?.copyWith(
          color: textTheme.titleLarge?.color ?? colorScheme.onSurface,
          fontWeight: FontWeight.w500,
        );

    return SafeArea(
      bottom: false,
      child: Container(
        height: effectiveHeight,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(color: effectiveBackgroundColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            leading ??
                (Navigator.of(context).canPop()
                    ? IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: iconTheme.color,
                          size: iconTheme.size ?? 20,
                        ),
                        padding: EdgeInsets.zero,
                        onPressed:
                            onLeadingTap ?? () => Navigator.of(context).pop(),
                      )
                    : SizedBox(width: iconTheme.size ?? 48)),

            // Title
            Expanded(
              child: Text(
                title,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: effectiveTitleStyle,
              ),
            ),

            // Actions or placeholder
            if (actions != null && actions!.isNotEmpty)
              Row(mainAxisSize: MainAxisSize.min, children: actions!)
            else
              SizedBox(width: iconTheme.size ?? 48),
          ],
        ),
      ),
    );
  }
}
