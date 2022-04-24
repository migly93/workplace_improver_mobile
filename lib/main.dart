import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workplace_improver_mobile/utils/constants.dart';
import 'package:workplace_improver_mobile/widgets/home_page/home_page.dart';
import 'service_locator.dart';
import 'widgets/bottom_nav_bar/bottom_nav_bar_icon.dart';

void main() {
  setupServiceLocator();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  late PageController pageController;
  int _page = 0;

  final List<Widget> pages = [
    const HomePage(
      monthlyVotesLeft: 4,
      activeInitiatives: 2,
    ),
    const Text("ciao"),
    const Text("hello")
  ];

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SafeArea(
            child: PageView(
              children: pages,
              physics: const NeverScrollableScrollPhysics(),
              controller: pageController,
              onPageChanged: onPageChanged,
            ),
          ),
        ),
        bottomNavigationBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: BottomNavBarIcon(
                Icons.home_outlined,
                _page == 0 ? mainColor : mainGrey,
              ),
            ),
            BottomNavigationBarItem(
              icon: BottomNavBarIcon(
                Icons.add_circle_outlined,
                _page == 1 ? mainColor : mainGrey,
              ),
            ),
            BottomNavigationBarItem(
              icon: BottomNavBarIcon(
                Icons.person,
                _page == 2 ? mainColor : mainGrey,
              ),
            ),
          ],
          onTap: navigationTapped,
        ),
      ),
    );
  }
}
