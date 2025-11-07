import 'package:flutter/material.dart';
import '../../../core/utils/responsive/responsive_header.dart';
import '../../ui/image/app_image.dart';

class ProductCardImage extends StatelessWidget {
  final Map<String, dynamic> product;
  const ProductCardImage({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: AspectRatio(
          aspectRatio: ResponsiveHeader.getImageAspectRatio(context),
          child: AppImage(url: product['imageUrl'], fit: BoxFit.contain),
        ),
      ),
    );
  }
}
