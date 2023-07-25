import 'package:blog_club/main/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';
import '../home/posts/postItems.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    final posts = AppDatabase.posts;

    return Scaffold(
        body: SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBar(
            backgroundColor: themeData.colorScheme.background.withOpacity(0),
            title: Text(
              'profile',
              style: themeData.textTheme.titleMedium,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      CupertinoIcons.ellipsis,
                      color: themeData.textTheme.titleMedium!.color,
                    )),
              )
            ],
          ),
          Stack(children: [
            Container(
              margin: const EdgeInsets.fromLTRB(32, 0, 32, 64),
              decoration: BoxDecoration(
                  color: themeData.colorScheme.surface,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 20,
                        color:
                            themeData.colorScheme.onBackground.withOpacity(0.1))
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
                    child: Row(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Assets.img.stories.story5
                                .image(width: 84, height: 84)),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '@joviedan',
                                style: themeData.textTheme.bodySmall,
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const Text('Jovi  Daniel'),
                              const SizedBox(
                                height: 12,
                              ),
                              const Text(
                                'UX Disginer',
                                style: TextStyle(
                                    color: Color(0xff376AED), fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 24,
                    ),
                    child: Text('About me'),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 8, 16, 16),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. ',
                      style: themeData.textTheme.titleSmall,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
            Positioned(
              left: 96,
              right: 96,
              bottom: 0,
              child: Container(
                height: 30,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 20,
                        color:
                            themeData.colorScheme.onBackground.withOpacity(0.2))
                  ],
                ),
              ),
            ),
            Positioned(
                left: 64,
                right: 64,
                bottom: 32,
                child: Container(
                    height: 68,
                    decoration: BoxDecoration(
                        color: themeData.colorScheme.primary,
                        borderRadius: BorderRadius.circular(16)),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color(
                                  0xff2151CD,
                                ),
                                borderRadius: BorderRadius.circular(16)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '52',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: themeData.colorScheme.onPrimary),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Text(
                                  'post',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: themeData.colorScheme.onPrimary
                                          .withOpacity(0.6)),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '250',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: themeData.colorScheme.onPrimary),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                'following',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: themeData.colorScheme.onPrimary
                                        .withOpacity(0.6)),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '4.5k',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: themeData.colorScheme.onPrimary),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(
                                'followers',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: themeData.colorScheme.onPrimary
                                        .withOpacity(0.6)),
                              )
                            ],
                          ),
                        )
                      ],
                    )))
          ]),
          Container(
            margin: const EdgeInsets.fromLTRB(32, 16, 32, 16),
            decoration: BoxDecoration(
                color: themeData.colorScheme.surface,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32))),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 16, 32, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          'My Post',
                          style: themeData.textTheme.bodyMedium,
                        ),
                      ),
                      IconButton(
                          onPressed: () => {},
                          icon: Assets.img.icons.grid.svg(
                              color: themeData.textTheme.bodyLarge!.color)),
                      IconButton(
                          onPressed: () => {},
                          icon: Assets.img.icons.table.svg(
                              color: themeData.textTheme.bodyLarge!.color)),
                    ],
                  ),
                ),
                for (var i = 0; i < posts.length; i++)
                  postItems(post: posts[i]),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
