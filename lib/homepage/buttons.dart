
import 'package:flutter/material.dart';

import 'headerbutton.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        HeaderButton(
          name: 'Transfer',
          textcolor: Colors.grey,
          bgcolor: Colors.white70,
        ),
        HeaderButton(
          name: '+ Add Money',
          textcolor: Colors.white,
          bgcolor: Colors.black,
        ),
      ],
    );
  }
}

