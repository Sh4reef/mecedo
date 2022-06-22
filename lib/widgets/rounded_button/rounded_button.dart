import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  const RoundedButton(
      {Key? key, this.width = 187.57, this.height = 33, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          border: Border.all(color: Colors.white.withOpacity(0.32))),
      child: Text(text,
          style: TextStyle(
              color: Colors.white, fontSize: 12, fontWeight: FontWeight.w500)),
    );
  }
}
