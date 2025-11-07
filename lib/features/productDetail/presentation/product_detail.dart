import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:token_manage_apk/core/utils/logger.dart';

import '../../../core/data/dummy_data.dart';
import '../../../core/utils/responsive/responsive_utils.dart';
import '../../../shared/widgets/product/product_list.dart';
import 'widget/product_image_viewer.dart';
import 'widget/product_info.dart';

class ProductDetail extends ConsumerWidget {
  const ProductDetail({super.key, required this.productId});

  final String productId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Logger.log(productId);
    final product = dummyProducts.firstWhere(
      (product) => product['id'] == productId,
    );

    return Scaffold(
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
          padding: ResponsiveUtils.screenPadding(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              ProductImageViewer(
                images: product['imageList'] as List<String>,
                favourite: product['favorite'] as bool,
              ),
              const SizedBox(height: 10),
              ProductInfo(product: product),
              const SizedBox(height: 10),
              Text(
                "Related Products",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 10),

              ProductList(products: dummyProducts),
            ],
          ),
        ),
      ),
    );
  }
}
