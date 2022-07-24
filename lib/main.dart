import 'package:flutter/material.dart';
import 'package:mecedo/constants.dart';
import 'package:mecedo/screens/account_screen/account_screen.dart';
import 'package:mecedo/screens/chats_screen/chats_screen.dart';
import 'package:mecedo/screens/home_screen/home_screen.dart';
import 'package:mecedo/widgets/app_bottom_navigation_bar/app_bottom_navigation_bar.dart';

const testEnv = String.fromEnvironment('TEST_ENV');

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MyApp();
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final PageController _pageController = PageController(initialPage: 0);
  final List<Widget> _screens = const [
    HomeScreen(),
    ChatsScreen(),
    AccountScreen()
  ];
  int currentPage = 0;

  void _handleNavigationTap(int index) {
    _pageController.jumpToPage(index);

    setState(() {
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: testEnv,
      theme: ThemeData(
        primaryColor: const Color(primaryColor),
        fontFamily: 'poppins',
        // appBarTheme:
        //     AppBarTheme(systemOverlayStyle: SystemUiOverlayStyle.light),
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          body: PageView(
            controller: _pageController,
            children: _screens,
            physics: NeverScrollableScrollPhysics(),
          ),
          bottomNavigationBar: AppBottomNavigationBar(
            onNavigationTap: _handleNavigationTap,
            currentPage: currentPage,
          )),
    );
  }
}
