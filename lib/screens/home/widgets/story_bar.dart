import 'package:flutter/material.dart';
import 'create_story.dart';
import 'view_story.dart';
import '../../../resourses/assets_manager.dart';
import '../models/story_data.dart';

class StoryBar extends StatelessWidget {
  const StoryBar({super.key});
  List<StoryData> get storyList => [
        StoryData(
          userImg: PngAssets.user1,
          storyImg: PngAssets.stroy1,
        ),
        StoryData(
          userImg: PngAssets.user2,
          storyImg: PngAssets.stroy2,
        ),
        StoryData(
          userImg: PngAssets.user3,
          storyImg: PngAssets.stroy3,
        ),
        StoryData(
          userImg: PngAssets.user1,
          storyImg: PngAssets.stroy1,
        ),
        StoryData(
          userImg: PngAssets.user2,
          storyImg: PngAssets.stroy2,
        ),
        StoryData(
          userImg: PngAssets.user3,
          storyImg: PngAssets.stroy3,
        ),
        StoryData(
          userImg: PngAssets.user1,
          storyImg: PngAssets.stroy1,
        ),
        StoryData(
          userImg: PngAssets.user2,
          storyImg: PngAssets.stroy2,
        ),
        StoryData(
          userImg: PngAssets.user3,
          storyImg: PngAssets.stroy3,
        ),
      ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: ListView.builder(
          itemCount: storyList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            var newIndex = index - 1;
            if (newIndex == -1) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: CreateStory(
                  userImg: PngAssets.user,
                ),
              );
            }
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: ViewStory(
                userImg: storyList[newIndex].userImg,
                storyImg: storyList[newIndex].storyImg,
              ),
            );
          },
        ),
      ),
    );
  }
}
