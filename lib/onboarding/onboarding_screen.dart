import 'package:blog_club/gen/assets.gen.dart';
import 'package:blog_club/main/data.dart';
import 'package:blog_club/onboarding/textContainer.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  final items = AppDatabase.onBoardingItems;
  int page = 0;
  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      if (_pageController.page!.round() != page) {
        setState(() {
          debugPrint('selected page ->$page');
          page = _pageController.page!.round();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      backgroundColor: themeData.colorScheme.background,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 0),
                child: Assets.img.background.onboarding.image(),
              ),
            ),
            TextContainer(
                themeData: themeData,
                items: items,
                pageController: _pageController,
                page: page)
          ],
        ),
      ),
    );
  }
}
