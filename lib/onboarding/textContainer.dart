import 'package:blog_club/onboarding/naviContainer.dart';
import 'package:flutter/material.dart';

import '../models/onBoardingsItems.dart';

class TextContainer extends StatelessWidget {
  const TextContainer({
    super.key,
    required this.themeData,
    required this.items,
    required PageController pageController,
    required this.page,
  }) : _pageController = pageController;

  final ThemeData themeData;
  final List<OnBoardingItem> items;
  final PageController _pageController;
  final int page;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 324,
      decoration: BoxDecoration(
          color: themeData.colorScheme.surface,
          boxShadow: [
            BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(0.1))
          ],
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(32), topRight: Radius.circular(32))),
      child: Column(
        children: [
          Expanded(
              child: PageView.builder(
                  itemCount: items.length,
                  controller: _pageController,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(32, 32, 32, 18),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              items[index].title,
                              style: themeData.textTheme.titleLarge,
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(items[index].description,
                                style: themeData.textTheme.bodyLarge),
                          ]),
                    );
                  }))),
          NaviContainer(
              pageController: _pageController,
              items: items,
              themeData: themeData,
              page: page)
        ],
      ),
    );
  }
}
