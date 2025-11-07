import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  final Widget? leading;

  final List<Widget>? actions;

  final VoidCallback? onLeadingTap;

  const AppHeader({
    super.key,
    required this.title,
    this.leading,
    this.actions,
    this.onLeadingTap,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final iconColor = theme.iconTheme.color;
    final textColor = theme.textTheme.titleLarge?.color;

    return Container(
      height: preferredSize.height,
      width: double.infinity,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          leading ??
              (Navigator.of(context).canPop()
                  ? IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: iconColor,
                      ),
                      onPressed:
                          onLeadingTap ?? () => Navigator.of(context).pop(),
                    )
                  : const SizedBox(width: 48)),
          Expanded(
            child: Text(
              title,
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleLarge?.copyWith(
                color: textColor,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          if (actions != null && actions!.isNotEmpty)
            Row(mainAxisSize: MainAxisSize.min, children: actions!)
          else
            const SizedBox(width: 48),
        ],
      ),
    );
  }
}
