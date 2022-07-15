import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:job/homepage/bottomnav.dart';

import '../myswitch.dart';
import 'bottom.dart';
import 'buttons.dart';
import 'headerbutton.dart';
import 'middle.dart';
import 'smallbutton.dart';
import 'smallbuttons.dart';
import 'topicon.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(244, 246, 251, 1),
        appBar: AppBar(
          elevation: 0,
          title: Text('Hi Alex',
              style: TextStyle(fontSize: 24, color: Colors.black)),
          backgroundColor: Colors.transparent,
          actions: const [
            TopIcon(image: 'assets/images/bell.svg'),
            TopIcon(image: 'assets/images/person.svg'),
          ],
        ),
        bottomNavigationBar: const BottomNav(
          activeTab: 0,
        ),
        body: SingleChildScrollView(
          child: Column(children: const [
            Top(),
            Middle(),
            Bottom(),
          ]),
        ));
  }
}

class Top extends StatefulWidget {
  const Top({
    Key? key,
  }) : super(key: key);

  @override
  State<Top> createState() => _TopState();
}

class _TopState extends State<Top> {
  bool balanceswitch = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.35,
        margin: const EdgeInsets.all(12),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(22)),
        ),
        child: Column(
          children: [
            Row(
              children: [
                const Text('Good Morning',
                    style: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.grey)),
                TopIcon(image: 'assets/images/cloud.svg'),
                Spacer(),
                const Text('Hide Balance',
                    style: TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.grey)),
                
                Switch(
                  value: balanceswitch,
                  onChanged: (val) {
                    setState(() {
                      balanceswitch = val;
                    });
                  },
                  activeColor: CupertinoColors.activeGreen,
                ),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   mainAxisSize: MainAxisSize.min,
                //   children: [

                //     // SizedBox(
                //     //   width: MediaQuery.of(context).size.width * 0.2,
                //     //   child: CupertinoSwitchListTile(
                //     //       //title: Text('Hide Balance'),
                //     //       value: false,
                //     //       onChanged: (val) {}),
                //     // ),
                //   ],
                // )
              ],
            ),
            Spacer(),
            Row(children: const [
              Text('₦0.00',
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      color: Colors.black)),
              Spacer(),
            ]),
            Spacer(),
            const Buttons(),
            Spacer(),
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 12, horizontal: 14),
              margin: const EdgeInsets.symmetric(vertical: 12),
              //height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Color.fromRGBO(208, 224, 248, 1),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text('Finish Account setup',
                          style: TextStyle(
                              color: Color.fromRGBO(50, 74, 126, 1),
                              fontWeight: FontWeight.w600)),
                      Spacer(),
                      SvgPicture.asset('assets/images/forward-arrow.svg',
                          color: Color.fromRGBO(50, 74, 126, 1)),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: const [
                      Expanded(
                          child: Text(
                        'Please complete your KYC to transfer or withdraw',
                        style:
                            TextStyle(color: Color.fromRGBO(50, 74, 126, 1)),
                      )),
                    ],
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
