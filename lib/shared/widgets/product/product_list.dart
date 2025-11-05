import 'package:flutter/material.dart';
import 'package:token_manage_apk/shared/widgets/product/product_card_details.dart';
import 'package:token_manage_apk/shared/widgets/product/product_card_image.dart';
import '../../../../shared/ui/card/app_card.dart';
import '../../../core/utils/responsive/responsive_utils.dart';

class ProductList extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  const ProductList({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    final spacing = ResponsiveUtils.getSpacing(context);
    final crossAxisCount = ResponsiveUtils.getCrossAxisCount(context);
    return GridView.builder(
      itemCount: products.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.all(spacing / 2),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: spacing,
        crossAxisSpacing: spacing,
        childAspectRatio: 3.5 / 4,
      ),
      itemBuilder: (context, index) {
        final product = products[index];
        return AppCard(
          onTap: () => print("Tapped ${product['title']}"),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ProductCardImage(product: product),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 4),
                    ProductCardDetails(product: product),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
