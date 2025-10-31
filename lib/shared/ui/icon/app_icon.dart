import 'package:flutter/material.dart';

import '../text/app_text.dart';
import '../text/text_type.dart';

class IconHolder extends StatelessWidget {
  final IconData icon;
  final int notificationCount;
  final VoidCallback? onTap;
  final double size;

  const IconHolder({
    super.key,
    required this.icon,
    this.notificationCount = 0,
    this.onTap,
    this.size = 28,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Icon(icon, size: size, color: Theme.of(context).iconTheme.color),
          if (notificationCount > 0)
            Positioned(
              right: -6,
              top: -6,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.error,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Theme.of(context).scaffoldBackgroundColor,
                    width: 1.5,
                  ),
                ),
                constraints: const BoxConstraints(minWidth: 18, minHeight: 18),
                child: Center(
                  child: AppText(
                    text: notificationCount > 99
                        ? '99+'
                        : notificationCount.toString(),
                    type: TextType.notificationCount,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
