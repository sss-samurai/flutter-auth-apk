import 'package:flutter/material.dart';
import 'package:token_manage_apk/core/utils/responsive/responsive_header.dart';
import 'package:token_manage_apk/shared/ui/text/app_text.dart';
import '../image/app_image.dart';
import '../text/text_type.dart';

class ProfileHeader extends StatelessWidget {
  final String name;
  final String? imageUrl;
  final VoidCallback? onProfileTap;
  final VoidCallback? onEndIconTap;
  final Widget endIcon;
  final String greet;

  const ProfileHeader({
    super.key,
    required this.name,
    this.imageUrl,
    this.onProfileTap,
    this.onEndIconTap,
    this.greet = 'Hello!',
    required this.endIcon,
  });

  @override
  Widget build(BuildContext context) {
    final maxWidth = ResponsiveHeader.getMaxWidth(context);
    final avatarSize = ResponsiveHeader.getAvatarSize(context);

    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: onProfileTap,
              child: Row(
                children: [
                  AppImage(
                    url: imageUrl ?? '',
                    width: avatarSize,
                    height: avatarSize,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(text: greet, type: TextType.strongText),
                      AppText(text: name, type: TextType.bodyText),
                    ],
                  ),
                ],
              ),
            ),
            GestureDetector(onTap: onEndIconTap, child: endIcon),
          ],
        ),
      ),
    );
  }
}
