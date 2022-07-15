import 'package:flutter/material.dart';

class SmallButton extends StatelessWidget {
  const SmallButton({
    Key? key,
    required this.name,
    required this.textcolor,
    required this.bgcolor,
    required this.bold,
  }) : super(key: key);
  final String name;
  final bool bold;
  final Color textcolor;
  final Color bgcolor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: bgcolor,
          ),
          width: MediaQuery.of(context).size.shortestSide * 0.3,
          height: 45,
          child: Align(
              alignment: Alignment.center,
              child: Text(
                name,
                style: TextStyle(
                    color: textcolor,
                    fontWeight: bold ? FontWeight.w600 : FontWeight.w400),
              ))),
    );
  }
}

