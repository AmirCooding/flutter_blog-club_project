import 'package:blog_club/home/stories/story.dart';
import 'package:flutter/material.dart';

import '../../models/storyData.dart';

class StoriesList extends StatelessWidget {
  const StoriesList({
    super.key,
    required this.stories,
  });

  final List<StoryData> stories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 120,
      child: ListView.builder(
          itemCount: stories.length,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final story = stories[index];
            return Container(
              margin: const EdgeInsets.fromLTRB(5, 5, 5, 5),
              child: Column(
                children: [
                  Story(story: story),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Text(
                      story.name,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
