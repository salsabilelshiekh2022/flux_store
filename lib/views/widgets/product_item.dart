import 'package:flutter/material.dart';
import 'package:flux_store_for_course/constants.dart';
import 'package:flux_store_for_course/utils/routes.dart';

import '../../models/product_model.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context, rootNavigator: true)
              .pushNamed(AppRoutes.productFullPageRoute, arguments: product);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                product.image,
                width: 120,
                height: 172,
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Text(
              product.name,
              style: const TextStyle(color: kDarkColor, fontSize: 14),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              '\$ ${product.price}',
              style: const TextStyle(color: kDarkColor, fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
