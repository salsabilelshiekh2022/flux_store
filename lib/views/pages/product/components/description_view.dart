import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flux_store_for_course/controllers/product_cubit/product_cubit.dart';
import 'package:flux_store_for_course/views/pages/product/components/divider_app.dart';

import '../../../../constants.dart';

class DescriptionView extends StatelessWidget {
  const DescriptionView({super.key});

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
                  'Description',
                  style: TextStyle(color: Color(0xff33302E), fontSize: 16),
                ),
                IconButton(
                  onPressed: () {
                    cubit.isShowDesc();
                  },
                  icon: cubit.showDesc
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
            if (cubit.showDesc) ...[
              const DividerApp(),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Sportswear is no longer under culture, it is no longer indie or cobbled together as it once was. Sport is fashion today. The top is oversized in fit and style, may need to size down.',
                style: TextStyle(fontSize: 12, color: kDarkColor),
              )
            ],
          ],
        );
      },
    );
  }
}
