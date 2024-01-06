import 'package:flutter/material.dart';
import 'package:flux_store_for_course/views/pages/product/components/similar_product_view.dart';

import '../../../../models/product_model.dart';
import 'color_list.dart';
import 'description_view.dart';
import 'divider_app.dart';
import 'rating_bar.dart';
import 'reviews_view.dart';
import 'size_list.dart';

class DetailsCard extends StatelessWidget {
  const DetailsCard({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 32, right: 32),
      margin: const EdgeInsets.only(top: 350),
      width: double.infinity,
      //height: 50,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(255, 226, 217, 217),
                blurRadius: 2,
                spreadRadius: 0)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                product.name,
                style: const TextStyle(color: Color(0xff1D1F22), fontSize: 18),
              ),
              Text(
                "\$ ${product.price}",
                style: const TextStyle(color: Colors.black, fontSize: 26),
              ),
            ],
          ),
          const SizedBox(height: 10),
          StarRating(
            numOfStar: product.numOfStar,
            size: 14,
          ),
          const SizedBox(
            height: 20,
          ),
          const DividerApp(),
          const SizedBox(
            height: 15,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Color',
                style: TextStyle(color: Color(0xff777E90), fontSize: 16),
              ),
              Text(
                'Size',
                style: TextStyle(color: Color(0xff777E90), fontSize: 16),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ColorList(),
              SizeList(),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const DividerApp(),
          const SizedBox(
            height: 8,
          ),
          const DescriptionView(),
          const DividerApp(),
          const SizedBox(
            height: 8,
          ),
          const ReviewsView(),
          const SizedBox(
            height: 8,
          ),
          const SimilarProductView(),
          const SizedBox(
            height: 80,
          ),
        ],
      ),
    );
  }
}
