import 'package:flutter/material.dart';

import 'components/cart_information.dart';
import 'components/cart_item.dart';
import 'components/header.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            SizedBox(
              height: 380,
              width: 310,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: CartItem(),
                  );
                },
                itemCount: 3,
              ),
            ),
            const CartInformations(),
          ],
        ),
      ),
    );
  }
}
