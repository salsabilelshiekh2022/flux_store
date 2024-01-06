import 'package:flutter/material.dart';

import 'cart_button.dart';
import 'header_of_information.dart';

class CartInformations extends StatelessWidget {
  const CartInformations({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40, left: 25, right: 25),
      margin: const EdgeInsets.only(top: 35),
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
                blurStyle: BlurStyle.solid,
                color: Color.fromARGB(255, 226, 217, 217),
                blurRadius: 1,
                spreadRadius: 0)
          ]),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderOfInformation(
            title: 'Product Price',
            price: '\$110',
          ),
          Divider(
            color: Color(0xffE8E8E8),
            thickness: 1,
          ),
          SizedBox(
            height: 16,
          ),
          HeaderOfInformation(
            title: 'Shipping',
            price: 'Freeship',
          ),
          Divider(
            color: Color(0xffE8E8E8),
            thickness: 1,
          ),
          SizedBox(
            height: 16,
          ),
          HeaderOfInformation(
            title: 'Sub Total',
            price: '\$110',
          ),
          SizedBox(
            height: 10,
          ),
          CartButton()
        ],
      ),
    );
  }
}
