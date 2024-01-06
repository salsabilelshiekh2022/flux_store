import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class StarRating extends StatelessWidget {
  const StarRating({super.key, required this.numOfStar, required this.size});
  final int numOfStar;
  final double size;

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      itemSize: size,
      initialRating: 5,
      minRating: 1,
      unratedColor: Colors.grey[200],
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: numOfStar,
      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Color(0xff508a7b),
      ),
      onRatingUpdate: (rating) {},
    );
  }
}
