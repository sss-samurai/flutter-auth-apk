import 'package:flutter/material.dart';
import '../../../../shared/ui/text/expandable_text.dart';

class ProductInfo extends StatelessWidget {
  final Map<String, dynamic> product;
  const ProductInfo({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product['title'] ?? '',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            textAlign: TextAlign.left,
          ),
          const SizedBox(height: 8),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                product['price']?.toString() ?? '',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                textAlign: TextAlign.left,
              ),
              Row(
                children: [
                  const Icon(Icons.star, size: 16, color: Colors.amber),
                  const SizedBox(width: 4),
                  Text(
                    product['rating']?.toString() ?? '0.0',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 12),
          ExpandableText(text: product['description'], trimLines: 2),
        ],
      ),
    );
  }
}
