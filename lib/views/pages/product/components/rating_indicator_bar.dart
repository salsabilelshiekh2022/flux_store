import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../constants.dart';
import 'rating_bar.dart';

class RatingIndicatorBar extends StatelessWidget {
  const RatingIndicatorBar(
      {super.key,
      required this.precent,
      required this.trailing,
      required this.starNumber});
  final double precent;
  final String trailing;
  final String starNumber;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          starNumber,
          style: const TextStyle(color: kGreyColor),
        ),
        const SizedBox(width: 5),
        const StarRating(
          numOfStar: 1,
          size: 14,
        ),
        LinearPercentIndicator(
          width: 230.0,
          lineHeight: 4.0,
          percent: precent,
          trailing: Text(
            trailing,
            style: const TextStyle(fontSize: 12.0),
          ),
          barRadius: const Radius.circular(12),
          backgroundColor: const Color(0xffEFF0F1),
          progressColor: kGreenColor,
        ),
      ],
    );
  }
}
