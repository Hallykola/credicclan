import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopIcon extends StatelessWidget {
  const TopIcon({
    Key? key,
    required this.image,
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SvgPicture.asset(image,
          //color: Colors.white,
          height: 24),
    );
  }
}