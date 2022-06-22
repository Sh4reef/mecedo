import 'package:flutter/material.dart';
import 'package:mecedo/constants.dart';
import 'package:mecedo/screens/account_screen/account_screen.dart';

class HomeBottomNavigationBar extends StatelessWidget {
  const HomeBottomNavigationBar({
    Key? key,
  }) : super(key: key);

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
          onTap: () {
            if (ModalRoute.of(context)?.settings.name != '/')
              Navigator.pushNamed(
                context,
                '/',
              );
          },
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 9.4),
                child: Icon(
                  Icons.desktop_windows_outlined,
                  color: Color(primaryColor),
                ),
              ),
              Text('Home', style: TextStyle(fontSize: 10)),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            if (ModalRoute.of(context)?.settings.name != '/chats')
              Navigator.pushNamed(
                context,
                '/chats',
              );
          },
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 9.4),
                child: Icon(
                  Icons.chat_bubble_outline,
                  color: Color(primaryColor),
                ),
              ),
              Text('Chat', style: TextStyle(fontSize: 10)),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            if (ModalRoute.of(context)?.settings.name != '/account')
              Navigator.pushNamed(
                context,
                '/account',
              );
          },
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 9.4),
                child: Icon(
                  Icons.person_outline,
                  color: Color(primaryColor),
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
