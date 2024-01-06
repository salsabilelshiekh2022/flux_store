import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flux_store_for_course/controllers/product_cubit/product_cubit.dart';
import 'package:flux_store_for_course/views/pages/product/components/divider_app.dart';

import '../../../../models/product_model.dart';
import '../../../widgets/product_item.dart';

class SimilarProductView extends StatelessWidget {
  const SimilarProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      builder: (context, state) {
        var cubit = BlocProvider.of<ProductCubit>(context);
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Similar Product',
                  style: TextStyle(color: Color(0xff33302E), fontSize: 16),
                ),
                IconButton(
                  onPressed: () {
                    cubit.isShowSimilarProduct();
                  },
                  icon: cubit.showSimilarProduct
                      ? const Icon(
                          Icons.keyboard_arrow_down,
                          size: 28,
                        )
                      : const Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 20,
                        ),
                ),
              ],
            ),
            if (cubit.showSimilarProduct) ...[
              const DividerApp(),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.infinity,
                height: 250,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ProductItem(
                      product: dummyProducts[index],
                    );
                  },
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ],
          ],
        );
      },
    );
  }
}
