import 'package:blog_club/main/MainScreen.dart';

import 'package:flutter/material.dart';

import 'bottumNavigationItems.dart';

class BottomNaviagation extends StatelessWidget {
  final Function(int index) onTap;
  final int selectedIndex;
  final double bottomNavigationBackgroudHight = 65;

  const BottomNaviagation(
      {super.key, required this.onTap, required this.selectedIndex});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: Stack(children: [
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            height: bottomNavigationBackgroudHight,
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                blurRadius: 20,
                color: const Color(0xaa988487).withOpacity(0.3),
              ),
            ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ButtomNavigationItems(
                  iconFileName: 'Home.png',
                  title: 'Home',
                  activeIconFileName: 'HomeActive.png',
                  onTap: () {
                    onTap(homeIndex);
                  },
                  isActive: selectedIndex == homeIndex,
                ),
                ButtomNavigationItems(
                  iconFileName: 'Articles.png',
                  title: 'Articles',
                  activeIconFileName: 'ArticlesActive.png',
                  onTap: () {
                    onTap(articleIndex);
                  },
                  isActive: selectedIndex == articleIndex,
                ),
                Expanded(child: Container()),
                ButtomNavigationItems(
                  iconFileName: 'Search.png',
                  title: 'Search',
                  activeIconFileName: 'SearchActive.png',
                  onTap: () {
                    onTap(searchIndex);
                  },
                  isActive: selectedIndex == searchIndex,
                ),
                ButtomNavigationItems(
                  iconFileName: 'Menu.png',
                  title: 'Menu',
                  activeIconFileName: 'MenuActive.png',
                  onTap: () {
                    onTap(menuIndex);
                  },
                  isActive: selectedIndex == menuIndex,
                ),
              ],
            ),
          ),
        ),
        Center(
          child: Container(
            width: 55,
            height: 55,
            alignment: Alignment.center,
            child: Container(
              height: 65,
              decoration: BoxDecoration(
                border: Border.all(width: 4, color: Colors.white),
                color: const Color(0xff376AED),
                borderRadius: BorderRadiusDirectional.circular(27.5),
              ),
              child: Image.asset('assets/img/icons/plus.png'),
            ),
          ),
        )
      ]),
    );
  }
}
