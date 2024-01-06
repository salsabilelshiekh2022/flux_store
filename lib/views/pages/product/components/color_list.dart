import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? DecoratedBox(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    blurRadius: 2, color: Color(0xffE3E1DF), spreadRadius: 2)
              ],
            ),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 14,
              child: CircleAvatar(
                backgroundColor: color,
                radius: 11,
              ),
            ),
          )
        : CircleAvatar(
            backgroundColor: color,
            radius: 14,
          );
  }
}

class ColorList extends StatefulWidget {
  const ColorList({super.key});

  @override
  State<ColorList> createState() => _ColorListState();
}

class _ColorListState extends State<ColorList> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xffe7c0a7),
    Color(0xff050302),
    Color(0xffee6969),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28,
      width: 120,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  setState(() {});
                },
                child: ColorItem(
                  isActive: currentIndex == index,
                  color: colors[index],
                )),
          );
        },
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
