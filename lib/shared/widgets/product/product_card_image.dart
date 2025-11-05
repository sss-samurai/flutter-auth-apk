import 'package:flutter/material.dart';
import '../../ui/image/app_image.dart';

class ProductCardImage extends StatelessWidget {
  final Map<String, dynamic> product;
  const ProductCardImage({super.key, required this.product});

  double getImageAspectRatio(BuildContext context) {
    if (Responsive.isDesktop(context)) return 16 / 16;
    if (Responsive.isTablet(context)) return 4 / 4;
    return 1 / 1; // mobile: square
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: AspectRatio(
          aspectRatio: getImageAspectRatio(context),
          child: AppImage(url: product['imageUrl'], fit: BoxFit.contain),
        ),
      ),
    );
  }
}

class Responsive {
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 600 &&
      MediaQuery.of(context).size.width < 1024;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1024;
}
