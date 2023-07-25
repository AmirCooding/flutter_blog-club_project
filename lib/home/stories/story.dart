import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import '../../models/storyData.dart';
import 'profileImage.dart';

class Story extends StatelessWidget {
  const Story({
    required this.story,
  });

  final StoryData story;

  @override
  Widget build(BuildContext context) {
    if (!story.isViewed) return _storiesNotViewed(context);

    return _storiesViewed();
  }

  Container _storiesViewed() {
    return Container(
        width: 65,
        height: 65,
        decoration: BoxDecoration(
            borderRadius: BorderRadiusDirectional.circular(45),
            gradient: const LinearGradient(begin: Alignment.topLeft, colors: [
              Color.fromARGB(255, 220, 19, 19),
              Color.fromARGB(255, 139, 30, 53),
              Color.fromARGB(255, 242, 171, 78)
            ])),
        child: ProfieImage(story: story));
  }

  SizedBox _storiesNotViewed(BuildContext context) {
    return SizedBox(
      width: 65,
      height: 65,
      child: DottedBorder(
        padding: EdgeInsets.zero,
        strokeWidth: 1,
        borderType: BorderType.Circle,
        dashPattern: [5, 3],
        color: Colors.grey.shade400,
        child: ProfieImage(story: story),
      ),
    );
  }
}
