import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mecedo/widgets/dashed_divider/dashed_divider.dart';

class ReferralCodeCard extends StatelessWidget {
  const ReferralCodeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 28),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white, width: 1)),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(
                top: 11.5, left: 10.2, right: 10.2, bottom: 6.5),
            child: SvgPicture.asset(
              'assets/images/referral-main.svg',
            ),
          ),
          DashedDivider(
            color: Color(0xffe6e6e6),
          ),
          Container(
            padding: const EdgeInsets.only(
                top: 8.7, bottom: 8.8, left: 24, right: 15.4),
            child: Row(children: [
              Text('Share the\nGiven code', style: TextStyle(fontSize: 13)),
              const Spacer(),
              Container(
                width: 182.42,
                padding: const EdgeInsets.only(
                    left: 25, top: 12.3, right: 19.6, bottom: 11.5),
                decoration: BoxDecoration(
                    color: Color(0xfffbfbfb),
                    borderRadius: BorderRadius.circular(23)),
                child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('NHDFG', style: TextStyle(fontSize: 13)),
                      const Spacer(),
                      Icon(
                        Icons.share,
                        size: 14.12,
                        color: Color(0xffc7c7c7),
                      )
                    ]),
              )
            ]),
          )
        ],
      ),
    );
  }
}
