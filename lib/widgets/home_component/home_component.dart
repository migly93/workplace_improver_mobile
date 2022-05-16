import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workplace_improver_mobile/utils/constants.dart';
import 'package:workplace_improver_mobile/widgets/bottom_nav_bar/bottom_nav_bar_icon.dart';
import 'package:workplace_improver_mobile/widgets/home_page/home_page.dart';
import 'package:workplace_improver_mobile/widgets/initiative_form/initiative_form.dart';

class HomeComponent extends StatefulWidget {
  const HomeComponent({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomeComponentState();
  }
}

class _HomeComponentState extends State<HomeComponent> {
  late PageController pageController;
  int _page = 0;

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
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: PageView(
            children: [
              const HomePage(
                monthlyVotesLeft: 4,
                activeInitiatives: 2,
              ),
              InitiativeForm(
                backToHome: navigationTapped,
              ),
              const Text("hello")
            ],
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
              icon: CupertinoIcons.home,
              color: _page == 0 ? mainColor : mainGrey,
              size: _page == 0 ? 36 : null,
            ),
          ),
          BottomNavigationBarItem(
            icon: BottomNavBarIcon(
              icon: CupertinoIcons.add_circled,
              color: _page == 1 ? mainColor : mainGrey,
              size: _page == 1 ? 36 : null,
            ),
          ),
          BottomNavigationBarItem(
            icon: BottomNavBarIcon(
              icon: CupertinoIcons.person_alt_circle,
              color: _page == 2 ? mainColor : mainGrey,
              size: _page == 2 ? 36 : null,
            ),
          ),
        ],
        onTap: navigationTapped,
      ),
    );
  }
}
