import 'package:flutter/material.dart';

import 'actionlist.dart';

class Bottom extends StatelessWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> content = [
      {
        "head": "Borrow",
        "body": "Loan Application Accepted",
        "more": "View Offer",
        "icon": "assets/images/briefcase.svg",
        "iconcolor": Color.fromRGBO(188, 163, 129, 1),
        "bgcolor": Color.fromRGBO(244, 237, 226, 1),
        "iconbgcolor": Color.fromRGBO(243, 202, 133, 1),
      },
      {
        "head": "Save",
        "body": "Earn up to 15.5% per annum ",
        "more": "Start",
        "icon": "assets/images/wallet.svg",
        "iconcolor": Color.fromRGBO(91, 184, 114, 1),
        "bgcolor": Color.fromRGBO(228, 242, 238, 1),
        "iconbgcolor": Color.fromRGBO(174, 229, 196, 1),
      },
      {
        "head": "Spend",
        "body": "Send money and pay bills easily",
        "more": "View Offer",
        "icon": "assets/images/atm-card.svg",
        "iconcolor": Color.fromRGBO(244, 237, 226, 1),
        "bgcolor": Color.fromRGBO(243, 234, 237, 1),
        "iconbgcolor": Color.fromRGBO(240, 200, 202, 1),
      },
      {
        "head": "Invest",
        "body": "Let your money earn good returns",
        "more": "View Offer",
        "icon": "assets/images/pie-chart.svg",
        "iconcolor": Color.fromRGBO(244, 237, 226, 1),
        "bgcolor": Color.fromRGBO(227, 239, 253, 1),
        "iconbgcolor": Color.fromRGBO(177, 200, 236, 1),
      },
    ];
    return 
    // Expanded(
        // //height: MediaQuery.of(context).size.height * 0.4,
        // margin: const EdgeInsets.all(12),
        // //padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        // decoration: const BoxDecoration(
        //   //color: Colors.white,
        //   borderRadius: BorderRadius.all(Radius.circular(8)),
        // ),
        // child: 
        
        GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 2,
            childAspectRatio: 2 / 2.5,
            crossAxisSpacing: 15.0,
            mainAxisSpacing: 10.0,
          
          children:
               List.generate(content.length,(index){
                return ActionList(
                bgcolor: content[index]['bgcolor'],
                iconcolor: content[index]['iconcolor'],
                iconbgcolor: content[index]['iconbgcolor'],
                icon: content[index]['icon'],
                head: content[index]['head'],
                body: content[index]['body'],
                more: content[index]['more']);
               }
          )
          ,
        )
        // )

        // GridView.builder(
        //   physics: const NeverScrollableScrollPhysics(),
        //   //shrinkWrap: true,
        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 2,
        //     childAspectRatio: 2 / 2.5,
        //     crossAxisSpacing: 15.0,
        //     mainAxisSpacing: 10.0,
        //   ),
        //   itemCount: content.length,
        //   itemBuilder: (context, index) {
        //     return ActionList(
        //         bgcolor: content[index]['bgcolor'],
        //         iconcolor: content[index]['iconcolor'],
        //         iconbgcolor: content[index]['iconbgcolor'],
        //         icon: content[index]['icon'],
        //         head: content[index]['head'],
        //         body: content[index]['body'],
        //         more: content[index]['more']);
        //   },
        // ))
        ;
  }
}
