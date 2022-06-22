import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mecedo/constants.dart';
import 'package:mecedo/screens/home_screen/widgets/circle_avatar_with_texts.dart';

class HeaderWithAvatars extends StatelessWidget {
  const HeaderWithAvatars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100 + (75 / 2),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: Color(primaryColor),
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(24)),
                ),
              )
            ],
          ),
          Positioned(
            bottom: 143 * 0.65,
            left: 0,
            right: 0,
            child: Row(
              children: [
                SizedBox(
                  width: 29,
                ),
                Text('Medico',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                Spacer(),
                Row(
                  children: [
                    Text('Mumbai',
                        style: TextStyle(fontSize: 10, color: Colors.white)),
                    Icon(
                      Icons.arrow_drop_down_outlined,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: -54,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatarWithTexts(
                  svgIcon: SvgPicture.asset(
                    'assets/icons/nurse.svg',
                    width: 41,
                  ),
                  text: 'Doctor',
                  secondaryText: 'Search doctor\naround you',
                ),
                SizedBox(
                  width: 41.5,
                ),
                CircleAvatarWithTexts(
                  svgIcon: SvgPicture.asset(
                    'assets/icons/pill.svg',
                    width: 35,
                  ),
                  text: 'Medicines',
                  secondaryText: 'Order Medicine\nto home',
                ),
                SizedBox(
                  width: 41.5,
                ),
                CircleAvatarWithTexts(
                  svgIcon: SvgPicture.asset(
                    'assets/icons/microscope.svg',
                    width: 32,
                  ),
                  text: 'Digonostic',
                  secondaryText: 'Book test at\nDoorstep',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
