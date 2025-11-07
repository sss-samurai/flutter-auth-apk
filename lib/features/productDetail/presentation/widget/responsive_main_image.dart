import 'package:flutter/material.dart';
import '../../../../core/utils/responsive/responsive_utils.dart';
import '../../../../shared/ui/image/app_image.dart';

class ResponsiveMainImage extends StatelessWidget {
  final String imageUrl;
  final bool isFavorite;
  final VoidCallback? onFavoriteToggle;

  const ResponsiveMainImage({
    super.key,
    required this.imageUrl,
    this.isFavorite = false,
    this.onFavoriteToggle,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final imageSize = ResponsiveUtils.getImageSizeInDetailesView(context);

    return SizedBox(
      width: screenWidth,
      height: imageSize,
      child: Stack(
        children: [
          // Center the main image
          Center(
            child: AppImage(
              url: imageUrl,
              fit: BoxFit.contain,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          // Floating heart icon at right end
          Positioned(
            top: 16,
            right: 16,
            child: GestureDetector(
              onTap: onFavoriteToggle,
              child: Icon(
                Icons.favorite,
                color: isFavorite ? Colors.red : null,
                size: 28,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
