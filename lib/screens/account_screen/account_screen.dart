import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mecedo/constants.dart';
import 'package:mecedo/widgets/rounded_button/rounded_button.dart';

import '../../widgets/progress_bar/progress_bar.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffff5f5f5),
      appBar: AppBar(
        backgroundColor: Color(0xffff5f5f5),
        toolbarHeight: 0,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.only(
                      left: 14, right: 14, top: 18, bottom: 34),
                  height: 298,
                  decoration: BoxDecoration(
                      color: Color(primaryColor),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.person, color: Colors.white, size: 21),
                            Spacer(),
                            Container(
                              margin: const EdgeInsets.only(top: 7),
                              width: 80,
                              child: FittedBox(
                                fit: BoxFit.cover,
                                child: CircleAvatar(
                                  child:
                                      Image.asset('assets/images/account.png'),
                                ),
                              ),
                            ),
                            Spacer(),
                            Icon(
                              Icons.settings_outlined,
                              color: Colors.white,
                              size: 21,
                            ),
                          ]),
                      Spacer(),
                      Text('Jitendra Raut',
                          style: TextStyle(fontSize: 17, color: Colors.white)),
                      Text('+91 97306270877',
                          style: TextStyle(fontSize: 12, color: Colors.white)),
                      Spacer(),
                      ProgressBar(
                        value: 22,
                      ),
                      Spacer(),
                      RoundedButton(
                        text: 'Complete your profile',
                      )
                    ],
                  )),
              SizedBox(
                height: 21,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 31, horizontal: 25),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/user-1.svg'),
                        SizedBox(
                          width: 30,
                        ),
                        Text('My Doctors'),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 14,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Divider(
                      height: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 31, horizontal: 25),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/calendar.svg'),
                        SizedBox(
                          width: 30,
                        ),
                        Text('Appointments'),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 14,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Divider(
                      height: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 31, horizontal: 25),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/user-2.svg'),
                        SizedBox(
                          width: 30,
                        ),
                        Text('Online consultation'),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 14,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Divider(
                      height: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 31, horizontal: 25),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/chemistry.svg'),
                        SizedBox(
                          width: 30,
                        ),
                        Text('Medical records'),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 14,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Divider(
                      height: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 31, horizontal: 25),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/wristwatch.svg'),
                        SizedBox(
                          width: 30,
                        ),
                        Text('Reminders'),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 14,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Divider(
                      height: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 31, horizontal: 25),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/present.svg'),
                        SizedBox(
                          width: 30,
                        ),
                        Text('Health interest'),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 14,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Divider(
                      height: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 31, horizontal: 25),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/atm-card.svg'),
                        SizedBox(
                          width: 30,
                        ),
                        Text('My payments'),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 14,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6),
                    child: Divider(
                      height: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 31, horizontal: 25),
                    child: Row(
                      children: [
                        SvgPicture.asset('assets/icons/wand.svg'),
                        SizedBox(
                          width: 30,
                        ),
                        Text('Offers'),
                        Spacer(),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: 14,
                        )
                      ],
                    ),
                  ),
                ]),
              ),
              SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }
}
