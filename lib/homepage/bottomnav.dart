import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    Key? key,
    required this.activeTab,
  }) : super(key: key);
  final int activeTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        unselectedItemColor: kNavIconColor,
        selectedItemColor: kNavSelectedIconColor,
        showUnselectedLabels: true,
        backgroundColor: knavbg,
        currentIndex: activeTab,
        onTap: (index) {
          if (index == 0) {
            //Navigator.popAndPushNamed(context, '/home');
          }
          if (index == 1) {
            //Navigator.popAndPushNamed(context, '/profile');
          }
        },
        items:  [
          BottomNavigationBarItem(
              label: 'Home',
              icon: SvgPicture.asset('assets/images/home.svg', color: Colors.black54, width: 30),),
          BottomNavigationBarItem(
              label: 'Spend',
              icon: SvgPicture.asset('assets/images/atm-card.svg', color: Colors.black54, width: 30),),
          BottomNavigationBarItem(
              label: 'Save',
              icon: SvgPicture.asset('assets/images/wallet.svg', color: Colors.black54, width: 30),),
          BottomNavigationBarItem(
              label: 'Borrow',
              icon: SvgPicture.asset('assets/images/briefcase.svg', color: Colors.black54, width: 30),),
          BottomNavigationBarItem(
              label: 'More',
              icon: SvgPicture.asset('assets/images/menu.svg', color: Colors.black54, width: 30),
              ),
        ]);
  }
}
