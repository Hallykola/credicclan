import 'package:flutter/material.dart';

import 'smallbuttons.dart';

class Middle extends StatelessWidget {
  const Middle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //width: MediaQuery.of(context).size.height * 0.4,
      margin: const EdgeInsets.all(12),
      //padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      child: const SmallButtons(),
    );
  }
}