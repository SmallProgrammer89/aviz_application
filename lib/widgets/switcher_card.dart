import 'package:aviz_application/constants/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:switcher_button/switcher_button.dart';

class SwitcherCard extends StatefulWidget {
  SwitcherCard(
      {super.key,
      required this.title,
      required this.switcher,
      required this.isMarjin});
  String title;
  bool switcher;
  bool isMarjin;
  @override
  State<SwitcherCard> createState() => _SwitcherCardState();
}

class _SwitcherCardState extends State<SwitcherCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: widget.isMarjin
          ? EdgeInsets.symmetric(horizontal: 20, vertical: 10)
          : null,
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: CustomColor.customGrey),
      ),
      child: Row(
        children: [
          SwitcherButton(
            offColor: Color(0xffDEDEDE),
            onColor: CustomColor.customRed,
            size: 30,
            value: widget.switcher,
            onChange: (value) {
              setState(() {
                widget.switcher = value;
              });
            },
          ),
          Spacer(),
          Text(
            widget.title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
