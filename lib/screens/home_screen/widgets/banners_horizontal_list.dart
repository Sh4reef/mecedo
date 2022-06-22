import 'package:flutter/material.dart';

class BannersHorizontalList extends StatelessWidget {
  const BannersHorizontalList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 152,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 17),
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: ((context, index) {
          return Container(
            width: size.width * 0.9,
            height: 152,
            decoration: BoxDecoration(
                // color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(11)),
                border: Border.all(color: Color(0xFFCCCCCC)),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/find-a-doc@2x.png'))),
          );
        }),
        separatorBuilder: (context, index) {
          return SizedBox(width: 8);
        },
      ),
    );
  }
}
