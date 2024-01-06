import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header(
      {super.key, required this.title, this.more = false, this.onPress});
  final String title;
  final bool more;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(color: Color(0xff33302E), fontSize: 16),
        ),
        IconButton(
            onPressed: () {},
            icon: more
                ? const Icon(
                    Icons.keyboard_arrow_down,
                    size: 28,
                  )
                : const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                  ))
      ],
    );
  }
}
