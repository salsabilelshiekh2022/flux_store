import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton({super.key, this.onTap, required this.text});
  final VoidCallback? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 48,
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
