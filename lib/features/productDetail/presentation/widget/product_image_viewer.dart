import 'package:flutter/material.dart';
import '../../../../shared/ui/image/app_image.dart';
import 'responsive_main_image.dart';

class ProductImageViewer extends StatefulWidget {
  final List<String> images;
  final bool favourite;

  const ProductImageViewer({
    super.key,
    required this.images,
    this.favourite = false,
  });

  @override
  State<ProductImageViewer> createState() => _ProductImageViewerState();
}

class _ProductImageViewerState extends State<ProductImageViewer> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ResponsiveMainImage(
          imageUrl: widget.images[selectedIndex],
          isFavorite: widget.favourite,
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 70,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: widget.images.length,
            separatorBuilder: (_, __) => const SizedBox(width: 8),
            itemBuilder: (context, index) {
              final isSelected = index == selectedIndex;
              return GestureDetector(
                onTap: () => setState(() => selectedIndex = index),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: isSelected
                          ? theme.colorScheme.primary
                          : Colors.transparent,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: AppImage(
                    url: widget.images[index],
                    width: 64,
                    height: 64,
                    fit: BoxFit.cover,
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
