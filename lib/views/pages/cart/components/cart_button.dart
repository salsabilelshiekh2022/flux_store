import 'package:flutter/material.dart';

class CartButton extends StatelessWidget {
  const CartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          child: Container(
            width: 315,
            height: 48,
            decoration: BoxDecoration(
              color: const Color(0xff343434),
              borderRadius: BorderRadius.circular(24),
            ),
            child: const Center(
              child: Text(
                'Procced to check out',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        )
      ],
    );
  }
}
