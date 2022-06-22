import 'package:flutter/material.dart';
import 'package:mecedo/constants.dart';
import 'package:mecedo/screens/home_screen/widgets/banners_horizontal_list.dart';
import 'package:mecedo/screens/home_screen/widgets/doctor_tile.dart';
import 'package:mecedo/screens/home_screen/widgets/header_with_avatars.dart';

import 'widgets/referral_code_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool loading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          CustomScrollView(physics: BouncingScrollPhysics(), slivers: <Widget>[
        SliverAppBar(
          flexibleSpace: const FlexibleSpaceBar(
              stretchModes: [StretchMode.zoomBackground],
              title: SizedBox(
                height: 50,
                child: Icon(
                  Icons.refresh,
                  color: Colors.white,
                ),
              )),
          backgroundColor: Color(primaryColor),
          toolbarHeight: 0,
          expandedHeight: !loading ? 0 : 80,
          onStretchTrigger: () async {
            // SchedulerBinding.instance?.addPostFrameCallback((_) {
            //   setState(() {
            //     loading = true;
            //   });

            //   Future.delayed(Duration(seconds: 3), (() {
            //     setState(() {
            //       loading = false;
            //     });
            //   }));
            // });
          },
          stretch: true,
          pinned: true,
        ),
        SliverToBoxAdapter(
          child: Column(children: [
            HeaderWithAvatars(),
            SizedBox(
              height: 54,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 33),
              child: BannersHorizontalList(),
            ),
            SizedBox(
              height: 52,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17, right: 31),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Doctors nearby you'),
                  Text('See All', style: TextStyle(color: Color(primaryColor)))
                ],
              ),
            ),
            SizedBox(
              height: 40.6,
            ),
            Container(
              height: 134.3,
              clipBehavior: Clip.none,
              child: ListView.separated(
                  clipBehavior: Clip.none,
                  padding: const EdgeInsets.symmetric(horizontal: 17),
                  scrollDirection: Axis.horizontal,
                  itemCount: 5 + 2,
                  itemBuilder: ((context, index) {
                    return DoctorTile();
                  }),
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 21.4);
                  }),
            ),
            SizedBox(
              height: 33.1,
            ),
            ReferralCodeCard(),
            SizedBox(
              height: 50,
            )
          ]),
        ),
      ]),
    );
  }
}
