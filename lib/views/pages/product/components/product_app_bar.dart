import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flux_store_for_course/constants.dart';

import '../../../../controllers/product_cubit/product_cubit.dart';
import '../../../widgets/button_app_bar.dart';

class ProductBarApp extends StatelessWidget {
  const ProductBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 45, horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ButtonAppBar(
            onTap: () {
              Navigator.pop(context);
            },
            icon: Icons.arrow_back_ios_new,
            color: kDarkColor,
          ),
          BlocBuilder<ProductCubit, ProductState>(builder: (context, state) {
            var cubit = BlocProvider.of<ProductCubit>(context);
            return ButtonAppBar(
              onTap: () {
                cubit.isFavoriterProduct();
              },
              color: cubit.isFavorite ? Colors.red : kDarkColor,
              icon: cubit.isFavorite
                  ? Icons.favorite
                  : Icons.favorite_border_outlined,
            );
          }),
        ],
      ),
    );
  }
}
