import 'package:blog_club/gen/assets.gen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Container(
          height: 48,
          width: 111,
          decoration: BoxDecoration(
              color: themeData.colorScheme.primary,
              borderRadius: BorderRadiusDirectional.circular(12),
              boxShadow: [
                BoxShadow(
                    blurRadius: 20,
                    color: themeData.colorScheme.primary.withOpacity(0.3))
              ]),
          child: InkWell(
            onTap: () => showSnackbar(context, 'like button is clicked'),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // ignore: prefer_const_constructors
                Icon(
                  color: Colors.white,
                  CupertinoIcons.hand_thumbsup,
                  size: 20,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text('2.1k',
                    style: TextStyle(
                        color: themeData.colorScheme.onPrimary,
                        fontSize: 14,
                        fontWeight: FontWeight.w400))
              ],
            ),
          ),
        ),
      ),
      backgroundColor: themeData.colorScheme.surface,
      body: Stack(children: [
        CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Text(
                'Article',
                style: themeData.textTheme.titleMedium,
              ),
              actions: [
                IconButton(
                    onPressed: () => {},
                    icon: Icon(
                      CupertinoIcons.ellipsis,
                      color: themeData.textTheme.titleMedium!.color,
                    ))
              ],
            ),
            SliverList(
              delegate: SliverChildListDelegate.fixed([
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 16, 16, 32),
                  child: Text(
                    'Four Things evry woman Needs to Know',
                    style: themeData.textTheme.titleLarge,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 16, 0, 32),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Assets.img.stories.story9
                            .image(width: 48, height: 48, fit: BoxFit.cover),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Richard Fox',
                              style: themeData.textTheme.titleSmall,
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text(
                              '2m ago',
                              style: themeData.textTheme.titleSmall,
                            )
                          ],
                        ),
                      ),
                      IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () => {
                                showSnackbar(context, 'share button is clicked')
                              },
                          icon: Icon(
                            CupertinoIcons.share,
                            color: themeData.colorScheme.primary,
                          )),
                      IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () => {
                                showSnackbar(
                                    context, 'bookmark button is clicked')
                              },
                          icon: Icon(
                            CupertinoIcons.bookmark,
                            color: themeData.colorScheme.primary,
                          )),
                      const SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                ),
                ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32)),
                    child: Assets.img.background.singlePost.image()),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                  child: Text(
                    'A man`s sexuality is never your mind responsibility',
                    style: themeData.textTheme.bodyMedium,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,',
                    style: themeData.textTheme.titleSmall,
                  ),
                )
              ]),
            ),
          ],
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 116,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                  themeData.colorScheme.surface,
                  themeData.colorScheme.surface.withOpacity(0)
                ])),
          ),
        ),
      ]),
    );
  }
}

void showSnackbar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message),
    behavior: SnackBarBehavior.fixed,
  ));
}
