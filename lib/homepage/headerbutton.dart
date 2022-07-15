import 'package:flutter/material.dart';

class HeaderButton extends StatelessWidget {
  const HeaderButton({
    Key? key,
    required this.name,
    required this.textcolor,
    required this.bgcolor,
  }) : super(key: key);
  final String name;
  final Color textcolor;
  final Color bgcolor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: bgcolor,
          ),
          width: MediaQuery.of(context).size.shortestSide * 0.4,
          height: 45,
          child: Align(
              alignment: Alignment.center,
              child: Text(
                name,
                style: TextStyle(color: textcolor),
              ))),
    );
  }
}


