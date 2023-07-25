import 'package:blog_club/article/article.dart';
import 'package:blog_club/main/myApp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../models/posts.dart';

class postItems extends StatelessWidget {
  const postItems({
    super.key,
    required this.post,
  });

  final PostData post;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const ArticleScreen())),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(blurRadius: 20, color: Color(0x1a5282FF))
            ]),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Row(children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'assets/img/posts/small/${post.imageFileName}',
                  width: 120,
                )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 5, bottom: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post.caption,
                      style: TextStyle(
                          fontFamily: MyApp.defaultFontFamily,
                          color: Theme.of(context).textTheme.titleLarge!.color,
                          fontWeight: FontWeight.w700,
                          fontSize: 14),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(post.title,
                        style: Theme.of(context).textTheme.titleSmall),
                    const SizedBox(
                      height: 33,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          CupertinoIcons.hand_thumbsup,
                          size: 16,
                          color: Theme.of(context).textTheme.bodySmall!.color,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(post.likes,
                            style: Theme.of(context).textTheme.titleSmall),
                        const SizedBox(
                          width: 8,
                        ),
                        Icon(
                          CupertinoIcons.clock,
                          size: 16,
                          color: Theme.of(context).textTheme.bodySmall!.color,
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Text(post.time,
                            style: Theme.of(context).textTheme.titleSmall),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: Icon(
                              post.isBookmarked
                                  ? CupertinoIcons.bookmark_fill
                                  : CupertinoIcons.bookmark,
                              size: 16,
                              color:
                                  Theme.of(context).textTheme.bodySmall!.color,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
