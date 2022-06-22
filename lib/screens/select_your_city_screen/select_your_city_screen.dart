import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mecedo/screens/select_your_city_screen/widgets/cities_list.dart';
import 'package:mecedo/screens/select_your_city_screen/widgets/header_wtih_search.dart';

class SelectYourCityScreen extends StatefulWidget {
  const SelectYourCityScreen({Key? key}) : super(key: key);

  @override
  State<SelectYourCityScreen> createState() => _SelectYourCityScreenState();
}

class _SelectYourCityScreenState extends State<SelectYourCityScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(children: [
      const HeaderWithSearch(),
      // Container()
      const SizedBox(
        height: 42,
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: size.width * 0.04),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    offset: const Offset(0, 3),
                    blurRadius: 26,
                    color: Colors.grey.withOpacity(0.26))
              ]),
              child: SvgPicture.asset(
                'assets/icons/aim@2x.svg',
              ),
            ),
            const SizedBox(width: 13),
            const Text(
              'Use current location',
            )
          ],
        ),
      ),
      const SizedBox(
        height: 40,
      ),
      const CitiesList()
    ]));
  }
}
