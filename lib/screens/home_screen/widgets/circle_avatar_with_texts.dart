import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mecedo/constants.dart';

class CircleAvatarWithTexts extends StatelessWidget {
  final SvgPicture svgIcon;
  final String text;
  final String secondaryText;
  const CircleAvatarWithTexts(
      {Key? key,
      required this.svgIcon,
      required this.text,
      required this.secondaryText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 11),
                      blurRadius: 35,
                      color: Color(primaryColor).withOpacity(0.35))
                ]),
            child: CircleAvatar(backgroundColor: Colors.white, child: svgIcon)),
        Container(
            margin: EdgeInsets.only(bottom: 7, top: 12),
            height: 14,
            child: Text(text)),
        Text(secondaryText, style: TextStyle(fontSize: 10, height: 1.1)),
      ],
    );
  }
}
