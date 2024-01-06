import 'package:flutter/material.dart';

class AppAppBar extends StatelessWidget {
  const AppAppBar(
      {super.key,
      required this.leadingIcon,
      required this.lastIcon,
      required this.title});
  final IconData leadingIcon;
  final IconData lastIcon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            leadingIcon,
            size: 22,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 20),
          ),
          Icon(
            lastIcon,
            size: 22,
          ),
        ],
      ),
    );
  }
}
