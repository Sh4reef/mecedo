import 'package:flutter/material.dart';

class DoctorTile extends StatelessWidget {
  const DoctorTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.only(top: 58 / 2.5),
          width: 124.57,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 9),
                  blurRadius: 28,
                  color: Colors.grey.withOpacity(0.28))
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 58 / 2.5, left: 11.8),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('Dr. Alina James',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600)),
              SizedBox(
                height: 10.8,
              ),
              Text('B.Sc, MBBS, DDVL, MD-Dermitologist',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 9, color: Colors.grey[600])),
              SizedBox(
                height: 12.8,
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 14.11,
                    color: Color(0xFFEFCE4A),
                  ),
                  SizedBox(
                    width: 5.2,
                  ),
                  Text('4.2', style: TextStyle(fontSize: 10))
                ],
              )
            ]),
          ),
        ),
        Positioned(
          top: -(58 / 2.5),
          child: SizedBox(
            width: 58,
            child: FittedBox(
              fit: BoxFit.cover,
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Image.asset(
                  'assets/images/avatar-1.png',
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
