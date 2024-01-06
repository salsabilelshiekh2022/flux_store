import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flux_store_for_course/constants.dart';
import 'package:flux_store_for_course/views/pages/product/components/divider_app.dart';
import 'package:flux_store_for_course/views/pages/product/components/review_item.dart';

import '../../../../controllers/product_cubit/product_cubit.dart';
import '../../../../utils/assets.dart';
import 'reviews_rating.dart';

class ReviewsView extends StatelessWidget {
  const ReviewsView({super.key});

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
                  'Reviews',
                  style: TextStyle(color: Color(0xff33302E), fontSize: 16),
                ),
                IconButton(
                  onPressed: () {
                    cubit.isShowReviews();
                  },
                  icon: cubit.showReviews
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
            if (cubit.showReviews) ...[
              const DividerApp(),
              const SizedBox(
                height: 16,
              ),
              const ReviewsRating(),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '47 REVIEWS',
                    style: TextStyle(color: kGreyColor),
                  ),
                  Row(
                    children: [
                      Text(
                        'WRITE A REVIEW',
                        style: TextStyle(color: kGreyColor),
                      ),
                      Icon(
                        Icons.edit_rounded,
                        color: kGreyColor,
                        size: 18,
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const ReviewItem(
                image: AppAssets.review1,
                time: '5m ago',
                review:
                    'I love it.  Awesome customer service!! Helped me out with adding an additional item to my order. Thanks again!',
              ),
              const ReviewItem(
                image: AppAssets.review2,
                time: '9m ago',
                review:
                    "I'm very happy with order, It was delivered on and good quality. Recommended!",
              ),
            ]
          ],
        );
      },
    );
  }
}
