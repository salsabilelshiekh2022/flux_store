import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_margin_widget/flutter_margin_widget.dart';

import '../../../controllers/product_cubit/product_cubit.dart';
import '../../../models/product_model.dart';
import 'components/cart_button.dart';
import 'components/details_card.dart';
import 'components/product_app_bar.dart';

class ProductFull extends StatelessWidget {
  const ProductFull({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductCubit(),
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Margin(
                        margin: const EdgeInsets.only(left: 40, top: 25),
                        child: Image.asset(
                          product.image,
                          height: 400,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const ProductBarApp(),
                      DetailsCard(product: product),
                    ],
                  ),
                ],
              ),
            ),
            const CartButton(),
          ],
        ),
      ),
    );
  }
}
