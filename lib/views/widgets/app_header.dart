import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 20),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Show all',
              style: TextStyle(fontSize: 14, color: Color(0xff9b9b9b)),
            ),
          ),
        ],
      ),
    );
  }
}
