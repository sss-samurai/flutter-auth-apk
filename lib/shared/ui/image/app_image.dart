import 'package:flutter/material.dart';

class AppImage extends StatelessWidget {
  final String? url;
  final double? width;
  final double? height;
  final BoxFit fit;
  final BorderRadiusGeometry? borderRadius;
  final bool isAsset; // NEW FLAG
  final VoidCallback? onTap; // NEW OPTIONAL CALLBACK

  const AppImage({
    super.key,
    required this.url,
    this.width,
    this.height,
    this.fit = BoxFit.cover,
    this.borderRadius,
    this.isAsset = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Widget imageWidget;

    if (url == null || url!.isEmpty) {
      imageWidget = _placeholder();
    } else {
      imageWidget = isAsset
          ? Image.asset(url!, width: width, height: height, fit: fit)
          : Image.network(
              url!,
              width: width,
              height: height,
              fit: fit,
              errorBuilder: (_, __, ___) => _placeholder(),
              loadingBuilder: (context, child, progress) {
                if (progress == null) return child;
                return Center(
                  child: SizedBox(
                    width: 24,
                    height: 24,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                );
              },
            );
    }

    // Wrap with GestureDetector if onTap is provided
    if (onTap != null) {
      imageWidget = GestureDetector(onTap: onTap, child: imageWidget);
    }

    if (borderRadius != null) {
      return ClipRRect(borderRadius: borderRadius!, child: imageWidget);
    }

    return imageWidget;
  }

  Widget _placeholder() {
    return Container(
      width: width,
      height: height,
      color: Colors.grey.shade200,
      alignment: Alignment.center,
      child: const Icon(Icons.image_not_supported, color: Colors.grey),
    );
  }
}
