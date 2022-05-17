import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workplace_improver_mobile/models/user.dart';
import 'package:workplace_improver_mobile/services/user_service.dart';
import 'package:workplace_improver_mobile/widgets/bottom_nav_bar/bottom_nav_bar_icon.dart';
import 'package:workplace_improver_mobile/widgets/home_page/home_page.dart';
import 'package:workplace_improver_mobile/widgets/initiative_form/initiative_form.dart';
import 'package:workplace_improver_mobile/widgets/user_profile/user_profile.dart';

import '../../service_locator.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomeWidgetState();
  }
}

class _HomeWidgetState extends State<HomeWidget> {
  final UserService _userService = getIt<UserService>();

  late PageController pageController;
  late User _loggedUser;
  int _page = 0;
  final _pagesIcons = [
    CupertinoIcons.home,
    CupertinoIcons.add_circled,
    CupertinoIcons.person_alt_circle,
  ];

  @override
  initState() {
    super.initState();
    _loggedUser = _userService.getLoggedUser();
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
    setState(() => _page = page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: PageView(
            children: [
              HomePage(
                loggedUser: _loggedUser,
              ),
              InitiativeForm(
                loggedUser: _loggedUser,
                backToHome: navigationTapped,
              ),
              UserProfile(
                loggedUser: _loggedUser,
              ),
            ],
            physics: const NeverScrollableScrollPhysics(),
            controller: pageController,
            onPageChanged: onPageChanged,
          ),
        ),
      ),
      bottomNavigationBar: CupertinoTabBar(
        items: _pagesIcons
            .map((icon) => BottomNavigationBarItem(
                  icon: BottomNavBarIcon(
                    icon: icon,
                    pressed: _page == _pagesIcons.indexOf(icon),
                  ),
                ))
            .toList(),
        onTap: navigationTapped,
      ),
    );
  }
}
