import 'package:flutter/material.dart';

import '../../../../constants.dart';

class HeaderOfInformation extends StatelessWidget {
  const HeaderOfInformation(
      {super.key, required this.title, required this.price});
  final String title;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(color: kGreyColor, fontSize: 16),
            ),
            Text(
              price,
              style: const TextStyle(color: Colors.black, fontSize: 16),
            ),
          ],
        ),
        const SizedBox(
          height: 26,
        ),
      ],
    );
  }
}
