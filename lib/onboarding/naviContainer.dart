import 'package:blog_club/auth/auth.dart';
import 'package:blog_club/models/onBoardingsItems.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NaviContainer extends StatelessWidget {
  const NaviContainer({
    super.key,
    required PageController pageController,
    required this.items,
    required this.themeData,
    required this.page,
  }) : _pageController = pageController;

  final PageController _pageController;
  final List<OnBoardingItem> items;
  final ThemeData themeData;
  final int page;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Padding(
        padding: const EdgeInsets.only(left: 32, right: 32),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SmoothPageIndicator(
              controller: _pageController,
              count: items.length,
              effect: ExpandingDotsEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  dotColor: themeData.colorScheme.primary.withOpacity(0.1)),
            ),
            ElevatedButton(
              onPressed: () => {
                if (page == items.length - 1)
                  {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => AuthScreen()))
                  }
                else
                  {
                    _pageController.animateToPage(page + 1,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.decelerate)
                  }
              },
              style: ButtonStyle(
                  minimumSize: const MaterialStatePropertyAll(Size(88, 60)),
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)))),
              child: Icon(page == items.length - 1
                  ? CupertinoIcons.check_mark
                  : CupertinoIcons.arrow_right),
            ),
          ],
        ),
      ),
    );
  }
}
