import 'package:flutter/material.dart';

class SizeItem extends StatelessWidget {
  const SizeItem({super.key, required this.isActive, required this.size});
  final bool isActive;
  final String size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 28,
      height: 28,
      decoration: BoxDecoration(
          color: isActive ? const Color(0xff515151) : const Color(0xfffafafa),
          borderRadius: BorderRadius.circular(14)),
      child: Center(
        child: Text(
          size,
          style: TextStyle(
            fontSize: 12,
            color: isActive ? Colors.white : const Color(0xffC5C5C5),
          ),
        ),
      ),
    );
  }
}

class SizeList extends StatefulWidget {
  const SizeList({super.key});

  @override
  State<SizeList> createState() => _SizeListState();
}

class _SizeListState extends State<SizeList> {
  int currentIndex = 0;
  List<String> sizes = const [
    'S',
    'M',
    'L',
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
                child: SizeItem(
                  isActive: currentIndex == index,
                  size: sizes[index],
                )),
          );
        },
        itemCount: sizes.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
