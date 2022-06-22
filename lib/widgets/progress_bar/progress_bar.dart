import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final double value;
  const ProgressBar({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(children: [
        Text('${value.toInt()}%',
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.white)),
        SizedBox(
          height: 2,
        ),
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 6),
          width: size.width * 0.75,
          height: 11,
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.11),
              borderRadius: BorderRadius.circular(7)),
          child: FittedBox(
            fit: BoxFit.cover,
            child: Container(
                width: (size.width * 0.75) * (value / 100),
                height: 3,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7))),
          ),
        ),
      ]),
    );
  }
}
