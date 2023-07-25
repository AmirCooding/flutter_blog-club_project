import 'package:blog_club/home/posts/postItems.dart';

import 'package:flutter/material.dart';
import '../../main/data.dart';

class PostsList extends StatelessWidget {
  PostsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final posts = AppDatabase.posts;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 16, 24, 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Latest News',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'More',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ],
          ),
        ),
        ListView.builder(
            physics: const ClampingScrollPhysics(),
            shrinkWrap: true,
            itemExtent: 141,
            itemCount: posts.length,
            itemBuilder: (context, index) {
              final post = posts[index];

              return postItems(post: post);
            }),
      ],
    );
  }
}
