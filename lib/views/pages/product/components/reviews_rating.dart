import 'package:flutter/material.dart';
import 'package:flux_store_for_course/constants.dart';

import 'rating_bar.dart';
import 'rating_indicator_bar.dart';

class ReviewsRating extends StatelessWidget {
  const ReviewsRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  '4.9',
                  style: TextStyle(fontSize: 40),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'OUT OF 5',
                  style: TextStyle(color: kGreyColor, fontSize: 12),
                )
              ],
            ),
            StarRating(
              numOfStar: 5,
              size: 18,
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        RatingIndicatorBar(
          precent: 0.8,
          starNumber: '5',
          trailing: '80%',
        ),
        SizedBox(
          height: 20,
        ),
        RatingIndicatorBar(
          precent: 0.12,
          starNumber: '4',
          trailing: '12%',
        ),
        SizedBox(
          height: 20,
        ),
        RatingIndicatorBar(
          precent: 0.05,
          starNumber: '3',
          trailing: '5%',
        ),
        SizedBox(
          height: 20,
        ),
        RatingIndicatorBar(
          precent: 0.03,
          starNumber: '2',
          trailing: '3%',
        ),
        SizedBox(
          height: 20,
        ),
        RatingIndicatorBar(
          precent: 0.0,
          starNumber: '1',
          trailing: '0%',
        ),
      ],
    );
  }
}
