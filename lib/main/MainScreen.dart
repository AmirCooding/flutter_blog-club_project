import 'package:blog_club/article/article.dart';
import 'package:blog_club/home/homeScreen.dart';
import 'package:blog_club/profile/ProfileScreen.dart';
import 'package:blog_club/search/serch_screen.dart';
import 'package:flutter/material.dart';

import '../home/bottom_navigation/bottom_navigation.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

int homeIndex = 0;
int articleIndex = 1;
int searchIndex = 2;
int menuIndex = 3;

class _MainScreenState extends State<MainScreen> {
  late final map = {
    homeIndex: _homeKey,
    articleIndex: _articleKey,
    searchIndex: _searchKey,
    menuIndex: _profileKey
  };
  int selectedScreenIndex = homeIndex;
  final GlobalKey<NavigatorState> _homeKey = GlobalKey();
  final GlobalKey<NavigatorState> _articleKey = GlobalKey();
  final GlobalKey<NavigatorState> _searchKey = GlobalKey();
  final GlobalKey<NavigatorState> _profileKey = GlobalKey();

  final List<int> _history = [];

  Future<bool> _onWillPop() async {
    final NavigatorState curretSelectedTabnavigatorState =
        map[selectedScreenIndex]!.currentState!;
    if (curretSelectedTabnavigatorState.canPop()) {
      curretSelectedTabnavigatorState.pop();
      return false;
    } else if (_history.isNotEmpty) {
      setState(() {
        selectedScreenIndex = _history.last;
        _history.removeLast();
      });
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
          body: Stack(
        children: [
          Positioned.fill(
            bottom: 65,
            child: IndexedStack(
              index: selectedScreenIndex,
              children: [
                _navigator(_homeKey, homeIndex, const HomeScreen()),
                _navigator(_articleKey, articleIndex, const ArticleScreen()),
                _navigator(_searchKey, searchIndex, const SearchScreen()),
                _navigator(_profileKey, menuIndex, const ProfileScreen()),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: BottomNaviagation(
              onTap: (int index) {
                setState(() {
                  _history.remove(selectedScreenIndex);
                  _history.add(selectedScreenIndex);
                  selectedScreenIndex = index;
                });
              },
              selectedIndex: selectedScreenIndex,
            ),
          ),
        ],
      )),
    );
  }

  Widget _navigator(GlobalKey key, int index, Widget child) {
    return key.currentState == null && selectedScreenIndex != index
        ? Container()
        : Navigator(
            key: key,
            onGenerateRoute: (settings) => MaterialPageRoute(
                // used Offstage fpr more
                builder: (context) => Offstage(
                    offstage: selectedScreenIndex != index, child: child)));
  }
}
