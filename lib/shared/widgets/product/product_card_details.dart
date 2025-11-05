import 'package:flutter/material.dart';

import '../../../core/constants/app_icons.dart';
import '../../ui/icon/app_icon.dart';
import '../../ui/text/app_text.dart';
import '../../ui/text/text_type.dart';

class ProductCardDetails extends StatelessWidget {
  final Map<String, dynamic> product;
  const ProductCardDetails({super.key, required this.product}); // <-- semicolon

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: product['title'],
            type: TextType.strongTextBold,
            textAlign: TextAlign.left,
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppText(
                text: product['price'].toString(),
                type: TextType.strongText,
                textAlign: TextAlign.left,
              ),
              Row(
                children: [
                  const IconHolder(
                    icon: AppIcons.star,
                    size: 16,
                    color: Colors.amber,
                  ),
                  const SizedBox(width: 4),
                  AppText(
                    text: product['rating']?.toString() ?? '0.0',
                    type: TextType.strongText,
                    textAlign: TextAlign.right,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
