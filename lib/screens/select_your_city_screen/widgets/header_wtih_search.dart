import 'package:flutter/material.dart';
import 'package:mecedo/constants.dart';

class HeaderWithSearch extends StatelessWidget {
  const HeaderWithSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 143 + (47 / 2),
      child: Stack(
        children: [
          Container(
            height: 143,
            decoration: const BoxDecoration(
                color: Color(primaryColor),
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(24))),
          ),
          Positioned(
            bottom: 143 / 2,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.close),
                  color: Colors.white,
                ),
                const Text('Select your city',
                    style: TextStyle(color: Colors.white))
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              margin: EdgeInsets.symmetric(horizontal: size.width * 0.04),
              height: 47,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 12),
                        blurRadius: 24,
                        color: const Color(primaryColor).withOpacity(0.24))
                  ]),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.search,
                      color: Colors.grey[300],
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
