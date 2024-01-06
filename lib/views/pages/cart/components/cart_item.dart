import 'package:flutter/material.dart';
import 'package:flux_store_for_course/constants.dart';
import 'package:flux_store_for_course/utils/assets.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(255, 226, 217, 217),
                blurRadius: 1,
                spreadRadius: 0),
          ],
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
            child: Image.asset(
              AppAssets.product2,
              width: 92,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 14,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  const Text(
                    'Sportwear Set',
                    style: TextStyle(fontSize: 14, color: kDarkColor),
                  ),
                  const SizedBox(
                    width: 75,
                  ),
                  Container(
                    width: 18,
                    height: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: kGreenColor),
                    child: const Icon(
                      Icons.check,
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              const Text(
                '\$ 80.00',
                style: TextStyle(color: kDarkColor, fontSize: 16),
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  const Text(
                    'Size: L  |  Color: Cream',
                    style: TextStyle(fontSize: 11, color: kGreyColor),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Container(
                    width: 64,
                    height: 22,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black54),
                    ),
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 9),
                            child: Icon(
                              Icons.maximize,
                              size: 12,
                              color: Colors.black54,
                            ),
                          ),
                          Text(
                            '1',
                            style:
                                TextStyle(fontSize: 12, color: Colors.black54),
                          ),
                          Icon(
                            Icons.add_outlined,
                            color: Colors.black54,
                            size: 12,
                          ),
                        ]),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
