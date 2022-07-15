import 'package:flutter/material.dart';

import 'smallbutton.dart';

class SmallButtons extends StatelessWidget {
  const SmallButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        SmallButton(
            name: 'Quick actions',
            textcolor: Colors.black,
            bgcolor: Colors.white70,
            bold: true),
        SmallButton(
          name: 'Transactions',
          textcolor: Color.fromRGBO(103, 124, 166, 1),
          bgcolor: Colors.transparent,
          bold: false,
        ),
      ],
    );
  }
}

