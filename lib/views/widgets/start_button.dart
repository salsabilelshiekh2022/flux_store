import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton(
      {super.key, required this.width, this.onTap, required this.label});
  final int width;
  final void Function()? onTap;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 200,
        height: 53,
        decoration: BoxDecoration(
          color: const Color(0xff757778),
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: Colors.white),
        ),
        child: Center(
          child: Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
