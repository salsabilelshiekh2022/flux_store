import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(8),
        width: 42,
        height: 42,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
              color: const Color.fromARGB(255, 240, 233, 233), width: 1),
        ),
        child: SvgPicture.asset(
          image,
          width: 11,
          height: 11,
        ),
      ),
    );
  }
}
