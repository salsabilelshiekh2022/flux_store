import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../utils/routes.dart';

class CartButton extends StatelessWidget {
  const CartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.cartPageRoute);
      },
      child: Container(
        margin: const EdgeInsets.only(top: 738),
        height: 77,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: kBlackColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24), topRight: Radius.circular(24)),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_bag_rounded,
              size: 24,
              color: Colors.white,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              'Add To Cart',
              style: TextStyle(color: Colors.white, fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
