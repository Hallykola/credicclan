import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActionList extends StatelessWidget {
  const ActionList({
    Key? key,
    required this.bgcolor,
    required this.iconcolor,
    required this.iconbgcolor,
    required this.icon,
    required this.head,
    required this.body,
    required this.more,
  }) : super(key: key);
  final Color bgcolor;
  final Color iconcolor;
  final Color iconbgcolor;
  final String icon;
  final String head;
  final String body;
  final String more;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 22),
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgcolor, //Color.fromRGBO(244, 237, 226, 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: iconbgcolor,
                  ),
                  child:
                      SvgPicture.asset(icon, height: 20, fit: BoxFit.contain)),
              SizedBox(
                width: 10,
              ),
              Text(
                head,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Spacer()
            ],
          ),
          Spacer(
            flex: 1,
          ),
          Text(body,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: iconbgcolor,
              )),
          Spacer(flex: 2),
          Text(
            more,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
