import 'package:flutter/material.dart';
import 'package:mecedo/constants.dart';

class AppBottomNavigationBar extends StatelessWidget {
  final void Function(int index) onNavigationTap;
  final int currentPage;
  static defaultOnNavigationTap(int index) {}
  const AppBottomNavigationBar(
      {Key? key,
      required this.currentPage,
      this.onNavigationTap = defaultOnNavigationTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 17.6),
      width: double.infinity,
      height: 87,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(18)),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -4),
                blurRadius: 63,
                color: Colors.grey.withOpacity(0.63))
          ]),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            onNavigationTap(0);
          },
          child: Column(
            children: [
              Container(
                width: 80,
                margin: EdgeInsets.only(bottom: 9.4),
                child: Icon(
                  Icons.desktop_windows_outlined,
                  color: currentPage == 0 ? Color(primaryColor) : Colors.grey,
                ),
              ),
              Text('Home', style: TextStyle(fontSize: 10)),
            ],
          ),
        ),
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            onNavigationTap(1);
          },
          child: Column(
            children: [
              Container(
                width: 80,
                margin: EdgeInsets.only(bottom: 9.4),
                child: Icon(
                  Icons.chat_bubble_outline,
                  color: currentPage == 1 ? Color(primaryColor) : Colors.grey,
                ),
              ),
              Text('Chat', style: TextStyle(fontSize: 10)),
            ],
          ),
        ),
        GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            onNavigationTap(2);
          },
          child: Column(
            children: [
              Container(
                width: 80,
                margin: EdgeInsets.only(bottom: 9.4),
                child: Icon(
                  Icons.person_outline,
                  color: currentPage == 2 ? Color(primaryColor) : Colors.grey,
                ),
              ),
              Text('Account', style: TextStyle(fontSize: 10)),
            ],
          ),
        )
      ]),
    );
  }
}
