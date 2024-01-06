import 'package:flutter/material.dart';

class ButtonAppBar extends StatelessWidget {
  const ButtonAppBar(
      {super.key, required this.icon, required this.color, this.onTap});
  final IconData icon;
  final Color color;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(0, 0, 0, 0),
              ),
            ],
          ),
          child: Icon(
            icon,
            color: color,
          ),
        ),
      ),
    );
  }
}
