import 'package:flutter/material.dart';

import '../../models/storyData.dart';

class ProfieImage extends StatelessWidget {
  const ProfieImage({
    required this.story,
  });
  final StoryData story;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(2, 2, 2, 2),
        width: 65,
        height: 65,
        decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(45),
        ),
        child: CircleAvatar(
          backgroundImage:
              AssetImage('assets/img/stories/${story.imageFileName}'),
        ));
  }
}
