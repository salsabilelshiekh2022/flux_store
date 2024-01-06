import 'package:flutter/material.dart';
import 'package:flux_store_for_course/views/pages/product/components/rating_bar.dart';

import '../../../../constants.dart';

class ReviewItem extends StatelessWidget {
  const ReviewItem(
      {super.key,
      required this.image,
      required this.time,
      required this.review});

  final String image;
  final String time;
  final String review;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(image),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Jennifer Rose',
                      style: TextStyle(color: kBlackColor, fontSize: 14),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    StarRating(numOfStar: 5, size: 10),
                  ],
                )
              ],
            ),
            Text(
              time,
              style: const TextStyle(color: kGreyColor, fontSize: 14),
            )
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          review,
          style: const TextStyle(color: kBlackColor, fontSize: 12),
        ),
        const SizedBox(
          height: 36,
        ),
      ],
    );
  }
}
