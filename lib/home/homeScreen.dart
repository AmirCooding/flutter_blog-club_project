import 'package:blog_club/gen/assets.gen.dart';
import 'package:blog_club/home/posts/postsList.dart';
import 'package:flutter/material.dart';
import '../main/data.dart';
import 'stories/storiesList.dart';
import 'carousel_sliders/categoriesList.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final stories = AppDatabase.stories;
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 16, 32, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hi, Amir!",
                        style: themeData.textTheme.titleSmall,
                      ),
                      Assets.img.icons.notification.image(
                        width: 24,
                        height: 24,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 8, 0, 16),
                  child: Text(
                    "Explore today's",
                    style: themeData.textTheme.titleLarge,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 0, 0, 0),
                  child: StoriesList(stories: stories),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 8, 0, 20),
                  child: Text(
                    "Category",
                    style: themeData.textTheme.titleLarge,
                  ),
                ),
                const CategoriesList(),
                PostsList(),
              ],
            ),
          )),
    );
  }
}
