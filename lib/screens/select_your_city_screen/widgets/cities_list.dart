import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CitiesList extends StatelessWidget {
  const CitiesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 26),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 3),
                  blurRadius: 29,
                  color: Colors.grey.withOpacity(0.29))
            ]),
        child: ListView.separated(
          padding: const EdgeInsets.only(top: 20),
          itemCount: 20 + 1,
          itemBuilder: ((context, index) {
            if (index == 0) {
              return Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Stack(
                    children: [
                      SvgPicture.asset('assets/icons/flag.svg'),
                      const Positioned(left: 27, child: Text('test'))
                    ],
                  ));
            }
            return Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 27),
                child: const Text('Test'));
          }),
          separatorBuilder: (context, index) {
            return const Divider();
          },
        ),
      ),
    );
  }
}
